from django import forms

from .models import Review

class CreateCommentForm(forms.ModelForm):
    class Meta:
        model = Review
        fields = [
            'username','comment','rate'
        ]

