FROM nginx:latest
RUN sed -i 's/nginx/seng/g' /usr/share/nginx/html/index.html
EXPOSE 8085
