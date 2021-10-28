FROM debian

RUN apt-get update \
   && apt-get install -y apt apt-utils dialog mc aptitude php7.3 php7.3-intl php7.3-xml php7.3-curl php7.3-mbstring php7.3-gd php7.3-zip unzip adminer git


COPY index.php /var/www/html/
COPY compone /var/www/html/
COPY composer /var/www/html/
COPY 000-default.conf /etc/apache2/sites-available/
COPY php.ini /etc/php/7.3/apache2/

RUN /var/www/html/compone bots
# COPY composer.json /var/www/html/bots/
# RUN cd /var/www/html/bots; /var/www/html/composer update
# COPY app_local.php /var/www/html/bots/config/

RUN cd /var/www/html/bots; chown www-data:www-data -R *

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80

