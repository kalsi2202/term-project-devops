# # Use an official nginx image based on Alpine Linux as the parent image
# FROM nginx:alpine

# # Remove the default nginx HTML files
# RUN rm -rf /usr/share/nginx/html/*

# # Copy the static HTML files to nginx's HTML directory
# COPY . /usr/share/nginx/html

# # Expose port 80 to the outside world
# EXPOSE 80

# # Start nginx when the container launches
# CMD ["nginx", "-g", "daemon off;"]
# Use an official Caddy image as the parent image
FROM caddy:2

# Copy the static HTML files to the Caddy web root
COPY . /usr/share/caddy

# Expose port 80
EXPOSE 80

# Caddy automatically serves files from /usr/share/caddy
