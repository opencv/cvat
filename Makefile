VERSION ?= latest

build:
	./build.sh ${VERSION}

up:
	docker-compose -f rebotics/docker-compose.yml up

down:
	docker-compose -f rebotics/docker-compose.yml down

shell:
	docker exec -it -u root reb_cvat bash -i

patch:
	bump2version --allow-dirty --config-file ./.bumpversion patch

minor:
	bump2version --config-file ./.bumpversion minor

major:
	bump2version --config-file ./.bumpversion major

# Default deploy setup for CI
ENVIRONMENT ?= r3dev
AWS_REGION ?= us-west-2
ECR_PROFILE ?= ecr_v3_dev
S3_PROFILE ?= aws_cf_s3
ECR_TEMPLATE ?= 119987807155.dkr.ecr.us-west-2.amazonaws.com/{app_name}-repo-{environment}
S3_TEMPLATE ?= s3://retechcfrepo/119987807155/rebotics/{environment}/services/{app_name}-info.zip

deploy:
	python3 control.py deploy \
	 	--aws-region "${AWS_REGION}" \
		--ecr-profile "${ECR_PROFILE}" \
		--s3-profile "${S3_PROFILE}" \
		--ecr-template "${ECR_TEMPLATE}" \
		--s3-template "${S3_TEMPLATE}" \
		--environment "${ENVIRONMENT}" \
		--application "${APPLICATION}" \
		--version ${VERSION}
