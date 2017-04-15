FROM alpine:3.4
RUN apk update && apk upgrade
RUN apk add nginx && mkdir -p /usr/share/nginx/html
ADD index.html /usr/share/nginx/html/index.html
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]