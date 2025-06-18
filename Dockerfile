# Use an Nginx image to serve the static files
FROM nginx:alpine

# Copy built files to Nginx html directory
COPY ./dist /usr/share/nginx/html

# Copy custom Nginx configuration (optional)
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
