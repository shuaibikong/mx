import json

from django.db.models import Q
from django.shortcuts import render

# Create your views here.
from django.views.generic import View
from django.shortcuts import render_to_response
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse

from operation.forms import UserAskForm
from operation.models import UserFavorite
from .models import CourseOrg, CityDict, Teacher
from courses.models import Course


class OrgView(View):
    """
    课程机构列表功能
    """
    def get(self, request):
        #课程机构
        all_orgs = CourseOrg.objects.all()

        #机构热度 []切片取出想要为多少个机构排序
        hot_orgs = all_orgs.order_by("click_num")[:3]

        #城市
        all_city = CityDict.objects.all()

        #机构搜索
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            all_orgs = all_orgs.filter(Q(name__icontains=search_keywords)|Q(desc__contains=search_keywords))

        #取出筛选城市
        city_id = request.GET.get('city', '')
        if city_id:
            all_orgs = all_orgs.filter(city_id=int(city_id))

        #筛选机构类别
        category = request.GET.get('ct', "")
        if category:
            all_orgs = all_orgs.filter(category=category)

        #进行顺序排列
        sort = request.GET.get('sort', '')
        if sort:
            if sort == "students":
                all_orgs = all_orgs.order_by("-students")
            elif sort == "courses":
                all_orgs = all_orgs.order_by("-course_nums")


        #统计数量
        org_nums = all_orgs.count()

        #对课程机构进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_orgs, 5, request=request)

        orgs = p.page(page)
        return render(request, 'org-list.html',{
            'all_orgs':orgs,
            'all_city': all_city,
            'org_nums': org_nums,
            'city_id': city_id,
            'category': category,
            'hot_orgs': hot_orgs,
            'sort': sort
        })


class AddUserAskView(View):
    """
    用户添加咨询
    """
    def post(self, request):
        userask_form = UserAskForm(request.POST)
        if userask_form.is_valid():
            user_ask = userask_form.save(commit=True)
            ret = {'status':'success'}
        else:
            ret = {'status':'fail', 'msg':'添加出错'}
        return HttpResponse(json.dumps(ret))


class OrgHomeView(View):
    """
    机构首页
    """
    def get(self, request, org_id):
        current_page = 'home'

        course_org = CourseOrg.objects.get(id=int(org_id))

        course_org.click_num += 1
        course_org.save()

        all_courses = course_org.course_set.all()[:3]
        all_teachers = course_org.teacher_set.all()[:1]
        return render(request, "org-detail-homepage.html", {
            'all_courses':all_courses,
            'all_teachers': all_teachers,
            'course_org': course_org,
            'current_page': current_page
        })


class OrgCourseView(View):
    """
    机构课程列表页
    """
    def get(self, request, org_id):
        current_page = 'course'
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_courses = course_org.course_set.all()
        return render(request, "org-detail-course.html", {
            'all_courses':all_courses,
            'course_org': course_org,
            'current_page': current_page
        })


class OrgDescView(View):
    """
    机构课程列表页
    """
    def get(self, request, org_id):
        current_page = 'desc'
        course_org = CourseOrg.objects.get(id=int(org_id))
        return render(request, "org-detail-desc.html", {
            'course_org': course_org,
            'current_page': current_page
        })


class OrgTeacherView(View):
    """
    机构教师列表页
    """
    def get(self, request, org_id):
        current_page = 'teacher'
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_teachers = course_org.teacher_set.all()
        return render(request, "org-detail-teachers.html", {
            'course_org': course_org,
            'all_teachers': all_teachers,
            'current_page': current_page
        })


class AddFavView(View):
    """
    用户收藏 取消收藏
    """
    def post(self, request):
        fav_id = int(request.POST.get('fav_id', 0))
        fav_type = int(request.POST.get('fav_type', 0))

        if not request.user.is_authenticated():
            #判断用户登录状态
            return HttpResponse('{"status":"fail", "msg":"用户未登录"}', content_type="application/json")

        exist_records = UserFavorite.objects.filter(user=request.user, fav_id=fav_id, fav_type=fav_type)
        if exist_records:
            #如果记录已经存在则表示用户取消收藏
            exist_records.delete()
            if int(fav_type) == 1:
                course = Course.objects.get(id=int(fav_id))
                course.fav_nums -= 1
                if course.fav_nums < 0:
                    course.fav_nums = 0
                course.save()
            elif int(fav_type) == 2:
                course_org = CourseOrg.objects.get(id=int(fav_id))
                course_org.fav_num -= 1
                if course_org.fav_nums < 0:
                    course_orgfav_nums = 0
                course_org.save()
            elif int(fav_type) == 3:
                teacher = Teacher.objects.get(id=int(fav_id))
                teacher.fav_num -= 1
                if teacher.fav_nums < 0:
                    teacher.fav_nums = 0
                teacher.save()
            return HttpResponse('{"status":"fail", "msg":"取消收藏"}', content_type="application/json")
        else:
            user_fav = UserFavorite()
            if int(fav_id) >0 and int(fav_type) >0:
                user_fav.user = request.user
                user_fav.fav_id = int(fav_id)
                user_fav.fav_type = int(fav_type)
                user_fav.save()

                if int(fav_type) == 1:
                    course = Course.objects.get(id=int(fav_id))
                    course.fav_nums += 1
                    course.save()
                elif int(fav_type) == 2:
                    course_org = CourseOrg.objects.get(id=int(fav_id))
                    course_org.fav_num += 1
                    course_org.save()
                elif int(fav_type) == 3:
                    teacher = Teacher.objects.get(id=int(fav_id))
                    teacher.fav_num += 1
                    teacher.save()

                return HttpResponse('{"status":"success", "msg":"已收藏"}', content_type="application/json")
            else:
                return HttpResponse('{"status":"fail", "msg":"收藏出错"}', content_type="application/json")


class TeacherListView(View):
    """
    课程讲师列表页
    """
    def get(self, request):
        all_teachers = Teacher.objects.all().order_by('-add_time')

        #教师搜索
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            all_teachers = all_teachers.filter(Q(name__icontains=search_keywords)|
                                               Q(work_company__contains=search_keywords)|
                                               Q(work_position__contains=search_keywords))

        hot_teachers = Teacher.objects.all().order_by('-click_num')[:5]

        sort = request.GET.get('sort', "")
        if sort == 'hot':
            all_teachers = all_teachers.order_by('-click_num')

        #对讲师进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        teacher_nums = all_teachers.count()
        # Provide Paginator with the request object for complete querystring generation

        p = Paginator(all_teachers, 5, request=request)

        all_teachers = p.page(page)

        return render(request, 'teachers-list.html',{
            'all_teachers': all_teachers,
            'teacher_nums': teacher_nums,
            'hot_teachers': hot_teachers,
            'sort': sort
        })


class TeacherDetailView(View):
    """
    讲师详情页
    """
    def get(self, request, teacher_id):
        teacher = Teacher.objects.get(id=teacher_id)
        teacher.click_num += 1
        teacher.save()
        teacher_lessons = teacher.teacher_lesson()
        course = teacher.course_set.first()
        #讲师排行
        hot_teachers = Teacher.objects.all().order_by('click_num')[:5]

        has_fav_teacher = False
        has_fav_org = False

        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=teacher.id, fav_type=3):
                has_fav_teacher = True
            if course:
                if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                    has_fav_org = True

        return render(request, 'teacher-detail.html', {
            'teacher': teacher,
            'teacher_lessons': teacher_lessons,
            'course': course,
            'has_fav_teacher': has_fav_teacher,
            'has_fav_org': has_fav_org,
            'hot_teachers': hot_teachers
        })


