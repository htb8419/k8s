# Base image
FROM nginx:latest

# Copy custom configuration file to NGINX
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files to the default web directory
COPY html/ /usr/share/nginx/html/

# Expose the default NGINX port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
