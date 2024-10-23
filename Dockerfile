# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML, CSS, and JS files to the Nginx web directory
COPY index.html /usr/share/nginx/html/
COPY welcome.html /usr/share/nginx/html/
COPY signupform.html /usr/share/nginx/html/
COPY loginform.html /usr/share/nginx/html/
COPY forgotpasswordform.html /usr/share/nginx/html/
COPY changepasswordform.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
