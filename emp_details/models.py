from django.db import models

class Employee (models.Model):
    name = models.CharField(max_length=30, blank=True)
    roll_no = models.CharField(max_length=100, blank=True)
    class_name = models.IntegerField(blank=True, null=True)
