from django.http import HttpResponse,Http404
from django.shortcuts import get_object_or_404
from django.shortcuts import render, reverse
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic.edit import FormMixin
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)
from django.db import models, connection
from django.contrib.auth.models import User
from .models import Review,Course,Instructor
from .forms import CreateCommentForm
import datetime
'''
# Post views

class PostDetailView(LoginRequiredMixin, FormMixin, DetailView):
    model = Review
    form_class = CreateCommentForm

    def get_context_data(self, **kwargs):
        context = super(PostDetailView, self).get_context_data(**kwargs)
        context['comments'] = Comment.objects.filter(post=self.kwargs.get('pk'))
        context['form'] = CreateCommentForm(initial={'post': self.object, 'author': self.request.user})

        return context

    def get_success_url(self):
        return reverse('post-detail', kwargs={'pk': self.object.id})

    def post(self, request, *args, **kwargs):
        self.object = self.get_object()
        form = self.get_form()
        if form.is_valid():
            return self.form_valid(form)
        else:
            return self.form_invalid(form)

    def form_valid(self, form):
        form.save()
        return super(PostDetailView, self).form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Review
    fields = ['rate', 'comment']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        return False

class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Review
    success_url = '/'

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        return False 
'''





def search(request):     
    if request.method == "POST":
        course=request.POST.get('browser1')
        name=request.POST.get('browser')
        cursor = connection.cursor()

        #課不空,老師空->顯示課程對應之課程+老師之評分
        if course!="" and name=="" :
            cursor.execute("""
                SELECT  c_id,title,name,round(avg(rate),2) as avgrate
                from review natural join course natural join instructor
                group by title,name
                having title='{}';""".format(course)
            )
            data=cursor.fetchall()
            return render(request,"forum/search.html", {
            "data": data,
            })

        #課不空,老師不空->顯示課程+老師對應之評分
        elif course!=""  :
            cursor.execute("""
                SELECT  c_id,title,name,round(avg(rate),2) as avgrate
                from review natural join course natural join instructor
                where title='{}' and name='{}';""".format(course,name)
            )
            data=cursor.fetchall()      
            return render(request,"forum/search.html", {
            "data": data,
            })
        #課空,老師不空->顯示某老師對應之評分
        elif name!="":
            cursor.execute("""
                SELECT  name,score
                from instructor
                where name='{}';""".format(name)
            )
            data1=cursor.fetchall()
            return render(request,"forum/search.html", {
            "data1": data1,
            })
        #課空,老師空->顯示所有老師對應之評分
        else:
            cursor.execute("""
            SELECT  name,score
            from instructor;"""
            )
            data1=cursor.fetchall()
            return render(request,"forum/search.html", {
            "data1": data1,
            })
    #一開始顯示所有課程+老師對應之評分
    else:
        cursor = connection.cursor()
        cursor.execute("""
            SELECT  c_id,title,name,round(avg(rate),2) as avgrate
            from review natural join course natural join instructor
            group by title,name;"""
    
        )

        data=cursor.fetchall()
        return render(request,"forum/search.html",{
        "data": data,
        })
@login_required
def comment(request, c_id):
    if request.method=='POST':
        try:
            username=request.POST.get('user')
            comment=request.POST.get('comment')
            rate=request.POST.get('rate')
        except:
            comment=None
            message='每欄都要填'

        if comment!=None:
            c_id =get_object_or_404(Course,c_id=c_id)
            #c_id =Course.objects.get(c_id=c_id)
            review=Review.objects.create(rate=rate,comment=comment,username=username,c_id=c_id)
            message='成功儲存'

        reviews=Review.objects.filter(c_id=c_id).order_by('time')

        return render(request,'comment.html',locals())
    else:
        c_id =get_object_or_404(Course,c_id=c_id)
        reviews=Review.objects.filter(c_id=c_id).order_by('time')
        print(reviews)
        return render(request,'comment.html',locals())

'''class commentDelete(LoginRequiredMixin, DeleteView):
    model = Review
    success_url = '/'                # 刪除成功返回留言列表
    template_name = 'forum/comment_delete.html'
'''


'''class CommentDeleteView(LoginRequiredMixin, DeleteView):
    model = Review
    template_name = 'forum/comment_delete.html'  # <app>/<model>_<viewtype>.html

    def form_invalid(self, form):
        return HttpResponseRedirect(self.get_success_url())

    def get_success_url(self):
        return reverse('comment_delete', kwargs=dict(c_id=self.kwargs['c_id']))
'''
'''
    model = Review
    template_name = 'forum/base.html'  # <app>/<model>_<viewtype>.html
    context_object_name = 'search'




#在html 下方預設拿到參數
#查render時是不是要dictionary,可不可以把變數塞進去
#LISTVIEW
'''


