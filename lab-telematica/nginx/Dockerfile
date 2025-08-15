FROM nginx:latest

COPY nginx-selfsigned.crt /etc/nginx/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/nginx/nginx-selfsigned.key
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 443