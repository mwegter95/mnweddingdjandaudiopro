#!/bin/bash

# File for views
VIEWS_FILE="mainapp/views.py"

# Create the views file if it doesn't exist
touch $VIEWS_FILE

# Add import statements
echo "from django.shortcuts import render" > $VIEWS_FILE

# List of views to create
declare -a VIEWS=("index" "about" "services" "gallery" "testimonials" "contact")

# Create each view function
for view in "${VIEWS[@]}"
do
    echo "" >> $VIEWS_FILE
    echo "def ${view}(request):" >> $VIEWS_FILE
    echo "    return render(request, 'mainapp/${view}.html')" >> $VIEWS_FILE
done

echo "Basic view functions created in $VIEWS_FILE"
