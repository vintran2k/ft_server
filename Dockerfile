FROM debian:buster

RUN apt-get -y update
RUN apt-get install -y wget
RUN apt-get install -y nginx
RUN apt-get install -y openssl
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt-get install -y mariadb-server mariadb-client
RUN apt-get install -y php-json php-mbstring

COPY ./srcs/init.sh ./
COPY ./srcs/default ./etc/nginx/sites-available/
COPY ./srcs/config.inc.php ./

CMD bash ./init.sh

EXPOSE 80
EXPOSE 443