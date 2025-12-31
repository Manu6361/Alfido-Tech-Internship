# Use a lightweight Nginx image to serve the HTML file
FROM nginx:alpine

# Copy our HTML file to the Nginx server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow outside access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
