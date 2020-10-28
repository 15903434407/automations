from django import forms


class LoginViewForms(forms.Form):
    username = forms.CharField(min_length=1, max_length=32)
    password = forms.CharField(min_length=1, max_length=128)