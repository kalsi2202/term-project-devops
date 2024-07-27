# Use an official nginx image as the parent image
FROM nginx:latest

# Remove the default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the static HTML files to nginx's HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
