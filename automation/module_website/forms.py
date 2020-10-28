from django import forms


class GetDomainConfigViewForms(forms.Form):
    domain_id = forms.IntegerField(min_value=1)


class SettingFloorpageViewForm(forms.Form):
    current_domain_id = forms.IntegerField(min_value=1)
    block_func = forms.IntegerField(min_value=0, max_value=1)
    floorpage_id = forms.IntegerField(min_value=1)
    config_cnzz = forms.CharField(widget=forms.Textarea, required=False)
    config_facebook = forms.CharField(widget=forms.Textarea, required=False)
    is_save_service_info = forms.IntegerField(min_value=0, max_value=1)