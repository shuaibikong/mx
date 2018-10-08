from django import forms
from captcha.fields import CaptchaField


#校验层
from users.models import UserProfile


class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=5)


class RegisterForm(forms.Form):
    email = forms.EmailField()
    password = forms.CharField(required=True, min_length=5)
    captcha = CaptchaField(error_messages={"invalid":"验证码错误"})


class ForgetForm(forms.Form):
    email = forms.EmailField()
    captcha = CaptchaField(error_messages={'invalid':'验证码错误'})


class ModifyPwdForm(forms.Form):
    password1 = forms.CharField(required=True, min_length=5)
    password2 = forms.CharField(required=True, min_length=5)


class UploadImageForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['image']


class UserInfoForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['nickname', 'gender', 'birday', 'address', 'mobile']


