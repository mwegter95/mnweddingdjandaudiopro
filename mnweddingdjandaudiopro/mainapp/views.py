from django.shortcuts import render

def index(request):
    return render(request, 'mainapp/index.html')

def about(request):
    return render(request, 'mainapp/about.html')

def services(request):
    return render(request, 'mainapp/services.html')

def gallery(request):
    return render(request, 'mainapp/gallery.html')

def testimonials(request):
    return render(request, 'mainapp/testimonials.html')

def contact(request):
    return render(request, 'mainapp/contact.html')
