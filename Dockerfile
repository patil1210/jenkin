# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the custom index.html to the default Nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to access the web server
EXPORT DOCKER_BUILDKIT=1


