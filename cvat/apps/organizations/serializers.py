# Copyright (C) 2021-2022 Intel Corporation
# Copyright (C) 2022-2023 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

from django.contrib.auth import get_user_model
from django.core.exceptions import ObjectDoesNotExist, ValidationError
from rest_framework import serializers
from dj_rest_auth.registration.serializers import RegisterSerializer
from django.contrib.auth.models import User
from django.utils.crypto import get_random_string
from .models import Invitation, Membership, Organization
from cvat.apps.engine.serializers import BasicUserSerializer

class OrganizationReadSerializer(serializers.ModelSerializer):
    owner = BasicUserSerializer(allow_null=True)
    class Meta:
        model = Organization
        fields = ['id', 'slug', 'name', 'description', 'created_date',
            'updated_date', 'contact', 'owner']
        read_only_fields = fields

class OrganizationWriteSerializer(serializers.ModelSerializer):
    def to_representation(self, instance):
        serializer = OrganizationReadSerializer(instance, context=self.context)
        return serializer.data

    class Meta:
        model = Organization
        fields = ['slug', 'name', 'description', 'contact', 'owner']

        # TODO: at the moment isn't possible to change the owner. It should
        # be a separate feature. Need to change it together with corresponding
        # Membership. Also such operation should be well protected.
        read_only_fields = ['owner']

    def create(self, validated_data):
        organization = super().create(validated_data)
        Membership.objects.create(
            user=organization.owner,
            organization=organization,
            is_active=True,
            joined_date=organization.created_date,
            role=Membership.OWNER)

        return organization

class InvitationReadSerializer(serializers.ModelSerializer):
    role = serializers.ChoiceField(Membership.role.field.choices,
        source='membership.role')
    user = BasicUserSerializer(source='membership.user')
    organization = serializers.PrimaryKeyRelatedField(
        queryset=Organization.objects.all(),
        source='membership.organization')
    owner = BasicUserSerializer(allow_null=True)

    class Meta:
        model = Invitation
        fields = ['key', 'created_date', 'owner', 'role', 'user', 'organization']
        read_only_fields = fields

class BasicInvitationSerializer(serializers.ModelSerializer):
    owner = BasicUserSerializer(allow_null=True)
    class Meta:
        model = Invitation
        fields = ['key', 'created_date', 'owner']
        read_only_fields = fields

class InvitationWriteSerializer(serializers.ModelSerializer):
    role = serializers.ChoiceField(Membership.role.field.choices,
        source='membership.role')
    email = serializers.EmailField(source='membership.user.email')
    organization = serializers.PrimaryKeyRelatedField(
        source='membership.organization', read_only=True)

    def to_representation(self, instance):
        serializer = InvitationReadSerializer(instance, context=self.context)
        return serializer.data

    class Meta:
        model = Invitation
        fields = ['key', 'created_date', 'owner', 'role', 'organization', 'email']
        read_only_fields = ['key', 'created_date', 'owner', 'organization']

    def create(self, validated_data):
        membership_data = validated_data.pop('membership')
        organization = validated_data.pop('organization')
        try:
            user = get_user_model().objects.get(
                email__iexact=membership_data['user']['email'])
            del membership_data['user']
        except ObjectDoesNotExist:
            user_email = membership_data['user']['email']
            username = user_email.split("@")[0]
            user = User.objects.create_user(username=username, password=get_random_string(length=32),
                email=user_email)
            user.set_unusable_password()
            user.save()
            del membership_data['user']
        membership, created = Membership.objects.get_or_create(
            defaults=membership_data,
            user=user, organization=organization)
        if not created:
            raise serializers.ValidationError('The user is a member of '
                'the organization already.')
        invitation = Invitation.objects.create(**validated_data,
            membership=membership)

        return invitation

    def update(self, instance, validated_data):
        return super().update(instance, {})

    def save(self, request, **kwargs):
        ## TODO move/remove request to/from kwarg
        invitation = super().save(**kwargs)
        invitation.send(request)

        return invitation

class MembershipReadSerializer(serializers.ModelSerializer):
    user = BasicUserSerializer()
    invitation = BasicInvitationSerializer()
    class Meta:
        model = Membership
        fields = ['id', 'user', 'organization', 'is_active', 'joined_date', 'role',
            'invitation']
        read_only_fields = fields
        extra_kwargs = {
            'invitation': {
                'allow_null': True, # owner of an organization does not have an invitation
            }
        }

class MembershipWriteSerializer(serializers.ModelSerializer):
    def to_representation(self, instance):
        serializer = MembershipReadSerializer(instance, context=self.context)
        return serializer.data

    class Meta:
        model = Membership
        fields = ['id', 'user', 'organization', 'is_active', 'joined_date', 'role']
        read_only_fields = ['user', 'organization', 'is_active', 'joined_date']

class AcceptInvitationSerializer(RegisterSerializer):
    def validate_username(self, username):
        return username

    def validate_email(self, email):
        return email

    def get_cleaned_data(self):
        return {
            'username': self.validated_data.get('username', ''),
            'password1': self.validated_data.get('password1', ''),
            'firstname': self.validated_data.get('firstname', ''),
            'lastname': self.validated_data.get('lastname', ''),
        }

    def save(self, request, invitation):
        self.cleaned_data = self.get_cleaned_data()
        user = invitation.membership.user
        if "password1" in self.cleaned_data:
            try:
                user.is_active = True
                user.first_name = self.cleaned_data['firstname']
                user.last_name = self.cleaned_data['lastname']
                user.username = self.cleaned_data['username']
                user.set_password(self.cleaned_data['password1'])
                user.save()
            except ValidationError as exc:
                raise serializers.ValidationError(
                    detail=serializers.as_serializer_error(exc)
            )
        return user
