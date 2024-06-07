# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the custom index.html to the default Nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 8084 to access the web server
EXPOSE 8086

# Update the Nginx configuration to listen on port 8086 instead of the default port 80
RUN sed -i 's/listen       80;/listen       8086;/g' /etc/nginx/conf.d/default.conf

# Ensure nginx is run in the foreground
CMD ["nginx", "-g", "daemon off;"]




