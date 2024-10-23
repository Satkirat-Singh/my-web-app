# Use the official Nginx image
FROM nginx:alpine

# Copy HTML files to the Nginx server
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
