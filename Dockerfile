# Use the official nginx image as the base
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the static website files into the nginx directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

