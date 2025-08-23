# Use official Nginx Alpine image
FROM nginx:alpine

# Copy custom HTML content
COPY html /usr/share/nginx/html

# Copy custom Nginx configuration if exists
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
