FROM 8.0-rc-apache-buster
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git wget

COPY ./ /var/www/html
RUN chmod 777 -R /var/www/html/files
RUN chmod 777 -R /var/www/html/configs

EXPOSE  80
