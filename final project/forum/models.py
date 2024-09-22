from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator, MinValueValidator

# Create your models here.
class Review(models.Model):
    r_id = models.AutoField(db_column='R_ID', primary_key=True)
    rate = models.IntegerField()
    comment = models.CharField(db_column='comment_', max_length=1000)  # Field renamed because it ended with '_'.
    time= models.DateTimeField(auto_now=True,db_column='time_', blank=True, null=True)  # Field renamed because it ended with '_'.
    c_id = models.ForeignKey('Course',  db_column='C_ID', blank=True, null=True,on_delete=models.CASCADE)  # Field name made lowercase.
    username = models.CharField(max_length=150, blank=True, null=True)        

    class Meta:
        app_label = 'forum'
        db_table = 'review'
    def __str__(self):
        return '%s-%s'%(self.username,self.comment)


class Course(models.Model):
    c_id = models.CharField(db_column='C_ID', primary_key=True, max_length=50)  # Field name made lowercase.
    title = models.CharField(max_length=50)
    credits = models.IntegerField(blank=True, null=True)
    attributes = models.CharField(max_length=50, blank=True, null=True)
    i_id= models.ForeignKey('Instructor', models.DO_NOTHING, db_column='I_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        app_label = 'forum'
        db_table = 'course'
class Instructor(models.Model):
    i_id = models.CharField(db_column='I_ID', primary_key=True, max_length=50)  # Field name made lowercase.
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=255, blank=True, null=True)
    office = models.CharField(max_length=50, blank=True, null=True)
    score = models.DecimalField(max_digits=3, decimal_places=2, blank=True, null=True)

    class Meta:
        app_label = 'forum'
        db_table = 'instructor'




        