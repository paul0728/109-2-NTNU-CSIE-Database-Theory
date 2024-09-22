from django.contrib import admin

# Register your models here.
from .models import Review,Course,Instructor
class ReviewAdmin(admin.ModelAdmin):
  list_display=('r_id','c_id','comment','rate')
class CourseAdmin(admin.ModelAdmin):
  list_display=('c_id','title','credits','attributes','i_id')
class InstructorAdmin(admin.ModelAdmin):
  list_display=('i_id','name','email','office','score')


admin.site.register(Review,ReviewAdmin)
admin.site.register(Course,CourseAdmin)
admin.site.register(Instructor,InstructorAdmin)