FROM debian:buster

RUN apt-get -y update && \
	apt-get install -y wget && \
	apt-get install -y nginx && \
	apt-get install -y openssl && \
	apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline && \
	apt-get install -y mariadb-server mariadb-client && \
	apt-get install -y php-curl php-gd php-json php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

COPY ./srcs/init.sh ./
COPY ./srcs/default ./etc/nginx/sites-available/
COPY ./srcs/config.inc.php ./
COPY ./srcs/wp-config.php ./

CMD bash ./init.sh

EXPOSE 80
EXPOSE 443