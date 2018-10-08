
import xadmin

from .models import CityDict, CourseOrg, Teacher

class CityDictAdmin:
    list_display = ["name", "desc", "add_time"]
    search_field = ["name", "desc"]
    list_filter = ["name", "desc", "add_time"]


class CourseOrgAdmin:
    list_display = ["name", "desc", "click_num", "fav_num", "image", "address", "city", "add_time"]
    search_field = ["name", "desc", "click_num", "fav_num", "image", "address", "city"]
    list_filter = ["name", "desc", "click_num", "fav_num", "image", "address", "city", "add_time"]
    #设置搜索方式读取外键
    relfield_style = 'fk-ajax'


class TeacherAdmin:
    list_display = ["org", "name", "work_years", "work_company", "work_position", "points", "click_num",
                    "fav_num", "add_time"]
    search_field = ["org", "name", "work_years", "work_company", "work_position", "points", "click_num",
                    "fav_num"]
    list_filter = ["org", "name", "work_years", "work_company", "work_position", "points", "click_num",
                    "fav_num", "add_time"]


xadmin.site.register(Teacher, TeacherAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(CityDict, CityDictAdmin)
