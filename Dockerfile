FROM nginx:latest
LABEL org.opencontainers.image.source="https://github.com/victorposada/website"

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./src /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]