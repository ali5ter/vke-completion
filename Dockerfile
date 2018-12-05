FROM nginx:latest

ADD /nginx.conf /etc/nginx/conf.d/default.conf
ADD /taxonomy /usr/share/nginx/html