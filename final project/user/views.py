from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

from .forms import UserRegistrationForm



def registration(request):
    if request.method == 'POST':
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Account created for {username}!')
            authenticate(username=form.cleaned_data['username'],
                         password=form.cleaned_data['password1'],
                        )
            auth_login(request, user)
            return redirect('search')
    else:
        form = UserRegistrationForm()
    return render(request, 'user/registration.html', {'form': form})

def login(request):
    return render(request, 'user/login.html')

