from django.urls import reverse
from rest_framework import status
from rest_framework.test import APITestCase
from rest_framework.authtoken.models import Token
from allauth.account import app_settings as allauth_settings
from django.test import override_settings


class AccountTests(APITestCase):
    def test_register_account_without_email_verification(self):
        """
        Ensure we can register a user and get auth token key when email verification is turned off
        """
        url = reverse('rest_register')
        data = {'first_name': 'test_first', 'last_name': 'test_last', 'username': 'test_username',
                'email': 'test_email@test.com', 'password1': '$Test357Test%', 'password2': '$Test357Test%',
                'confirmations': []}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        user_token = Token.objects.get(user__username=response.data['username'])
        self.assertEqual(response.data, {'first_name': 'test_first', 'last_name': 'test_last',
                                         'username': 'test_username', 'email': 'test_email@test.com',
                                         'email_verification_required': False, 'key': user_token.key})

    # @override_settings(ACCOUNT_AUTHENTICATION_METHOD='username', ACCOUNT_CONFIRM_EMAIL_ON_GET=True,
    #                    ACCOUNT_EMAIL_REQUIRED=True, ACCOUNT_EMAIL_VERIFICATION='mandatory',
    #                    EMAIL_BACKEND='django.core.mail.backends.console.EmailBackend')
    # def test_register_account_with_email_verification(self):
    #     url = reverse('rest_register')
    #     data = {'first_name': 'test_first', 'last_name': 'test_last', 'username': 'test_username',
    #             'email': 'test_email@test.com', 'password1': '$Test357Test%', 'password2': '$Test357Test%',
    #             'confirmations': []}
    #     response = self.client.post(url, data, format='json')
    #     self.assertEqual(response.status_code, status.HTTP_201_CREATED)
    #     self.assertEqual(response.data, {'first_name': 'test_first', 'last_name': 'test_last',
    #                                      'username': 'test_username', 'email': 'test_email@test.com',
    #                                      'email_verification_required': True, 'key': None})
