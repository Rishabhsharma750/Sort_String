from django.views.generic import ListView
from django.views.generic import View
from django.http import JsonResponse
from .models import *

class EnterView(ListView):
    model = Employee
    template_name = 'enter.html'
    context_object_name = 'users'

class CreateUser(View):
    def  get(self, request):
        name1 = request.GET.get('name', None)
        roll1 = request.GET.get('roll_no', None)
        class1 = request.GET.get('class_name', None)

        obj = Employee.objects.create(
            name = name1,
            roll_no = roll1,
            class_name = class1
        )

        user = {'id':obj.id,'name':obj.name,'roll_no':obj.roll_no,'class_name':obj.class_name}

        data = {
            'user': user
        }
        return JsonResponse(data)

class UpdateUser(View):
    def  get(self, request):
        id1 = request.GET.get('id', None)
        name1 = request.GET.get('name', None)
        roll1 = request.GET.get('roll_no', None)
        class1 = request.GET.get('class_name', None)

        obj = Employee.objects.get(id=id1)
        obj.name = name1
        obj.roll_no = roll1
        obj.class_name = class1
        obj.save()

        user = {'id':obj.id,'name':obj.name,'roll_no':obj.roll_no,'class_name':obj.class_name}

        data = {
            'user': user
        }
        return JsonResponse(data)

class DeleteUser(View):
    def  get(self, request):
        id1 = request.GET.get('id', None)
        Employee.objects.get(id=id1).delete()
        data = {
            'deleted': True
        }
        return JsonResponse(data)