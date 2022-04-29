#!/usr/bin/env python3
import json
import os

import click

FAKE = False

ECR_NAME_MAP = {
    'retechlabs/rebotics-cvat': 'cvat',
    'retechlabs/rebotics-cvat-opa': 'opa',
}


def sys_call(command):
    click.echo(f"{os.getcwd()}$ {command}")
    if not FAKE:
        if os.system(command) != 0:
            raise click.ClickException("Failed to run")


@click.group()
@click.option('--fake', is_flag=True)
def main(fake):
    global FAKE
    FAKE = fake


@main.command(name='minor')
@click.argument('version_file', type=click.File(mode='r'))
def get_minor(version_file):
    version = version_file.read()
    major, minor, patch = version.split('.')
    click.echo('{major}.{minor}'.format(**locals()))


@main.command(name='version')
@click.argument('version_file', type=click.File(mode='r'))
def get_version(version_file):
    click.echo(version_file.read())


def _deploy_app(environment, application, version, ecr_template, s3_template, s3_profile):
    print(f"Sending {application}:{version} to ECR")
    ecr_name = ECR_NAME_MAP[application]
    ecr_repo = ecr_template.format(
        app_name=ecr_name,
        environment=environment,
    )

    sys_call(f"docker tag {application}:{version} {ecr_repo}:{version}")
    sys_call(f"docker push {ecr_repo}:{version}")

    ecs_notification = {
        "tag": version,
        "image": f"{ecr_repo}:{version}",
        "repo": ecr_repo,
    }

    with open('ecs_notification.image.json', 'w') as notif_file:
        notif_file.write(json.dumps(ecs_notification))

    try:
        sys_call("zip ecs_notification.zip ecs_notification.image.json")
        s3_notification_key = s3_template.format(
            app_name=ecr_name,
            environment=environment,
        )
        sys_call(f"aws --profile {s3_profile} s3 cp ecs_notification.zip {s3_notification_key}")
    finally:
        click.echo("Cleaning...")
        sys_call(f"rm ecs_notification.image.json")
        sys_call(f"rm ecs_notification.zip")


@main.command()
@click.option('--application', required=True)
@click.option('--version', default='latest')
@click.option('--environment', default="r3dev")
@click.option('--aws-region', default='us-west-2')
@click.option('--ecr-profile', default='ecr_aws_profile')
@click.option('--s3-profile', default='s3_aws_profile')
@click.option('--ecr-template', default="ecr/{environment}/{app_name}")
@click.option('--s3-template', default="s3://s3-template-{environment}-{retailer}-{app_name}")
def deploy_app(version, environment, application,
               ecr_profile, s3_profile,
               ecr_template, s3_template,
               aws_region):
    click.echo("Logging in to ECR...")
    sys_call(f"eval $(aws ecr get-login --no-include-email --region {aws_region} --profile {ecr_profile})")
    click.echo('-' * 100)

    _deploy_app(environment=environment,
                application=application,
                version=version,
                ecr_template=ecr_template,
                s3_template=s3_template,
                s3_profile=s3_profile)
    click.echo("Done!")


if __name__ == '__main__':
    main()
