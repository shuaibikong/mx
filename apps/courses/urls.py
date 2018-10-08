from django.conf.urls import url, include

from .views import CourseListView, CourseDetailView, CourseInfoView, CommentView,AddCommentsView


urlpatterns = [
    url('^list/$', CourseListView.as_view(), name="course_list"),
    #课程详情页
    url('^detail/(?P<course_id>\d+)$', CourseDetailView.as_view(), name="course_detail"),
    url('^info/(?P<course_id>\d+)$', CourseInfoView.as_view(), name="course_info"),
    #课程评论
    url('^comment/(?P<course_id>\d+)$', CommentView.as_view(), name="course_comment"),
    #添加课程评论
    url('^comment/$', AddCommentsView.as_view(), name="add_comment"),
]