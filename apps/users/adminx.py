from django.contrib.auth.models import User

import xadmin
from xadmin import views
from xadmin.layout import Fieldset, Main, Side, Row
from  xadmin.plugins.auth import UserAdmin

from .models import EmailVerifyRecord, Banner, UserProfile


# class UserProfileAdmin(UserAdmin):
#     def get_form_layout(self):
#         if self.org_obj:
#             self.form_layout = (
#                 Main(
#                     Fieldset('',
#                              'username', 'password',
#                              css_class='unsort no_title'
#                              ),
#                     Fieldset(_('Personal info'),
#                              Row('first_name', 'last_name'),
#                              'email'
#                              ),
#                     Fieldset(_('Permissions'),
#                              'groups', 'user_permissions'
#                              ),
#                     Fieldset(_('Important dates'),
#                              'last_login', 'date_joined'
#                              ),
#                 ),
#                 Side(
#                     Fieldset(_('Status'),
#                              'is_active', 'is_staff', 'is_superuser',
#                              ),
#                 )
#             )
#         return super(UserAdmin, self).get_form_layout()



class BaseSetting:
    enable_themes = True
    use_bootswatch = True


class GlobalSetting:
    site_title = "慕学后台管理系统"
    site_footer = "慕学在线网"
    menu_style = "accordion"


class EmainVerifyRecordAdmin:
    list_display = ["code", "email", "send_type", "send_time"]
    search_fields = ["code", "email", "send_type"]
    list_filter = ["code", "email", "send_type", "send_time"]
    model_icon = 'fa fa-address-book-o'

class BannerAdmin:
    list_display = ["title", "image", "url", "index", "add_time"]
    serach_fields = ["title", "image", "url", "index"]
    list_filter = ["title", "image", "url", "index", "add_time"]


# xadmin.site.unregister(User)
xadmin.site.register(EmailVerifyRecord, EmainVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)

# xadmin.site.register(UserProfile, UserProfileAdmin)

xadmin.site.register(views.CommAdminView, GlobalSetting)
xadmin.site.register(views.BaseAdminView, BaseSetting)