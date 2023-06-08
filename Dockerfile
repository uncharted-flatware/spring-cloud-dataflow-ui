FROM nginx:1.23-alpine

# update packages and add some basics
RUN apk update
RUN apk add --no-cache curl && apk add --no-cache bash && apk add --no-cache vim

COPY proxy.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY ./target/classes/public/dashboard /var/www/dashboard