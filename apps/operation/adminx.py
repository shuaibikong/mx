

import xadmin

from .models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse

class UserAskAdmin:
    list_display = ["name", "mobile", "course_name", "add_time"]
    serach_field = ["name", "mobile", "course_name"]
    list_filter = ["name", "mobile", "course_name", "add_time"]


class CourseCommentsAdmin:
    list_display = ["user", "course", "comments", "add_time"]
    serach_field = ["user", "course", "comments"]
    list_filter = ["user", "course", "comments", "add_time"]


class UserFavoriteAdmin:
    list_display = ["user", "fav_id", "fav_type", "add_time"]
    search_field = ["user", "fav_id", "fav_type"]
    list_filter = ["user", "fav_id", "fav_type", "add_time"]


class UserMessageAdmin:
    list_display = ["user", "message", "has_read", "add_time"]
    search_field = ["user", "message", "has_read"]
    list_filter = ["user", "message", "has_read", "add_time"]


class UserCourseAdmin:
    list_display = ["user", "course", "add_time"]
    search_field = ["user", "course"]
    list_filter = ["user", "course", "add_time"]


xadmin.site.register(UserCourse, UserCourseAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(CourseComments, CourseCommentsAdmin)
xadmin.site.register(UserAsk, UserAskAdmin)
xadmin.site.register(UserFavorite, UserFavoriteAdmin)