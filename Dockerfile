FROM nginx:latest
RUN sed -i 's/nginx/seng/g' /usr/share/nginx/hmtl/index.html
EXPOSE 8085
