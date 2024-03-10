# Use Ubuntu as the base image
FROM ubuntu:latest

# Update the package lists and install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the HTML, CSS, and JavaScript files to the appropriate location
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
COPY script.js /var/www/html/

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
