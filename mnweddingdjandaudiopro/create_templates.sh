#!/bin/bash

# Directory for the templates
TEMPLATES_DIR="mainapp/templates/mainapp"

# Create the templates directory if it doesn't exist
mkdir -p $TEMPLATES_DIR

# List of template files to create
declare -a FILES=("base.html" "index.html" "about.html" "services.html" "gallery.html" "testimonials.html" "contact.html")

# Create each template file with initial content
for file in "${FILES[@]}"
do
    touch "$TEMPLATES_DIR/$file"
    echo "{% extends 'mainapp/base.html' %}" > "$TEMPLATES_DIR/$file"
    echo "{% block content %}" >> "$TEMPLATES_DIR/$file"
    echo "    <!-- Content for $file -->" >> "$TEMPLATES_DIR/$file"
    echo "{% endblock %}" >> "$TEMPLATES_DIR/$file"
done

# Add basic structure to base.html
echo "<!DOCTYPE html>" > "$TEMPLATES_DIR/base.html"
echo "<html lang=\"en\">" >> "$TEMPLATES_DIR/base.html"
echo "<head>" >> "$TEMPLATES_DIR/base.html"
echo "    <meta charset=\"UTF-8\">" >> "$TEMPLATES_DIR/base.html"
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> "$TEMPLATES_DIR/base.html"
echo "    <title>MN Wedding DJ and Audio Pro</title>" >> "$TEMPLATES_DIR/base.html"
echo "    <!-- Link to CSS -->" >> "$TEMPLATES_DIR/base.html"
echo "</head>" >> "$TEMPLATES_DIR/base.html"
echo "<body>" >> "$TEMPLATES_DIR/base.html"
echo "    <header>" >> "$TEMPLATES_DIR/base.html"
echo "        <!-- Navigation Bar -->" >> "$TEMPLATES_DIR/base.html"
echo "    </header>" >> "$TEMPLATES_DIR/base.html"
echo "    <main>" >> "$TEMPLATES_DIR/base.html"
echo "        {% block content %}" >> "$TEMPLATES_DIR/base.html"
echo "        {% endblock %}" >> "$TEMPLATES_DIR/base.html"
echo "    </main>" >> "$TEMPLATES_DIR/base.html"
echo "    <footer>" >> "$TEMPLATES_DIR/base.html"
echo "        <!-- Footer Content -->" >> "$TEMPLATES_DIR/base.html"
echo "    </footer>" >> "$TEMPLATES_DIR/base.html"
echo "    <!-- Link to JavaScript -->" >> "$TEMPLATES_DIR/base.html"
echo "</body>" >> "$TEMPLATES_DIR/base.html"
echo "</html>" >> "$TEMPLATES_DIR/base.html"

echo "Template files created in $TEMPLATES_DIR"
