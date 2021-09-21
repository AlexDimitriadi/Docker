FROM nginx:1.18.0-alpine
RUN apk update && apk add bash
#RUN apt update
ADD ./index.html /var/www/content1/index.html
ADD ./content1 /etc/nginx/sites-enabled/content1
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./privkey.pem /etc/letsencrypt/live/vilheor.hopto.org/privkey.pem
ADD ./fullchain.pem /etc/letsencrypt/live/vilheor.hopto.org/fullchain.pem 
CMD ["bash"]
WORKDIR /var/www/html
EXPOSE 80
EXPOSE 8080
EXPOSE 443
