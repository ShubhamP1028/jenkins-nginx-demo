# Base image
FROM ubuntu:latest

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Copy custom HTML file to nginx's default web directory
COPY index.html /var/www/html/index.html

# Expose port 80 for HTTP
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
