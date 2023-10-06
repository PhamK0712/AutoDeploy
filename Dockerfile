# Use an official NGINX runtime as a parent image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the content of your Sprint 1 Product folder into the image
COPY ./Sprint_1_Product/ .

# Replace the default NGINX configuration with your custom configuration
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 to allow external access
EXPOSE 80
