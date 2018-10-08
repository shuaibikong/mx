
import xadmin
from .models import Course, Lesson, Video, CourseResource, BannerCourse


class LessonInline:
    #用来组装页面
    model = Lesson
    extra = 0


class CourseResourceInline:
    model = CourseResource
    extra = 0



class CourseAdmin:
    list_display = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums", "add_time", 'zj_nums']
    search_field = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums"]
    list_filter = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums", "add_time"]
    #排序规则
    ordering = ['-click_nums']
    #只读字段
    readonly_fields = ['click_nums', 'fav_nums']
    #在列表页可以编辑的字段
    list_editable = ['degree', 'desc']
    #不显示字段
    exclude = ['']
    #页面组装
    inlines = [LessonInline, CourseResourceInline]
    #管理页面刷新间隔
    # refresh_times = [3, 5]
    #用来配置详情页的样式
    style_fields = {'detail': 'ueditor'}
    #自己配置的是否加载自定义插件的变量
    import_excel = True

    def queryset(self):
        #过滤数据来分类管理
        qs = super(BannerCourseAdmin, self).queryset()
        qs = qs.filter(is_banner=False)
        return qs

    def save_models(self):
        #保存models时执行的操作 保存课程时候统计课程机构的课程数
        obj = self.new_obj#取到新增的实例
        obj.save()
        if obj.course_org is not None:
            course_org = obj.course_org
            course_org.course_nums = Course.objects.filter(course_org=course_org).count()
            course_org.save()


class BannerCourseAdmin:
    list_display = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums", "add_time"]
    search_field = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums"]
    list_filter = ["name", "desc", "detail", "degree", "learn_times", "student", "fav_nums",
                    "image", "click_nums", "add_time"]
    #排序规则
    ordering = ['-click_nums']
    #只读字段
    readonly_fields = ['click_nums', 'fav_nums']
    #不显示字段
    exclude = ['']
    #页面组装
    inlines = [LessonInline, CourseResourceInline]

    def queryset(self):
        #过滤数据
        qs = super(BannerCourseAdmin, self).queryset()
        qs = qs.filter(is_banner=True)
        return qs


class LessonAdmin:
    list_display = ["course", "name", "add_time"]
    search_field = ["course", "name"]
    list_filter = ["course__name", "name", "add_time"]


class VideoAdmin:
    list_display = ["lesson", "name", "add_time"]
    search_field = ["lesson", "name"]
    list_filter = ["lesson", "name", "add_time"]


class CourseResourceAdmin:
    list_display = ["course", "name", "download", "add_time"]
    search_field = ["course", "name", "download"]
    list_filter = ["course", "name", "download", "add_time"]


xadmin.site.register(CourseResource, CourseResourceAdmin)

xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(BannerCourse, BannerCourseAdmin)

xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)