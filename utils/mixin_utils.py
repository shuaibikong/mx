from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


# class LoginRequiredMixin(object):
#     @classmethod
#     def as_view(cls, **initkwargs):
#         view = super(LoginRequiredMixin, cls).as_view(**initkwargs)
#         return login_required(view)
#



class LoginRequiredMixin(object):

    @method_decorator(login_required(login_url='/login/', redirect_field_name='next'))
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(request, *args, **kwargs)

