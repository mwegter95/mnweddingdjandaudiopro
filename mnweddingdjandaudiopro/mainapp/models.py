from django.db import models

class Service(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)  # Adjust max_digits as needed

    def __str__(self):
        return self.title

class GalleryImage(models.Model):
    caption = models.CharField(max_length=255)
    image = models.ImageField(upload_to='gallery_images/')
    uploaded_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.caption

class Testimonial(models.Model):
    author = models.CharField(max_length=100)
    content = models.TextField()
    posted_on = models.DateField()

    def __str__(self):
        return f"Testimonial by {self.author}"
