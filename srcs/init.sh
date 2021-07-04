#CERTIFICAT SSL
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=42 Paris/OU=vintran/CN=localhost"

#NGINX
mkdir -p var/www/localhost
ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled

#ACCESS
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

#MYSQL
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'user'@'localhost' IDENTIFIED BY 'password'" | mysql -u root
echo "FLUSH PRIVILEGES" | mysql -u root

#PHPMYADMIN
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/localhost/phpmyadmin/
mv ./config.inc.php /var/www/localhost/phpmyadmin/

#WORDPRESS
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mkdir /var/www/localhost/wordpress
cp -a wordpress/. /var/www/localhost/wordpress/
mv ./wp-config.php /var/www/localhost/wordpress

service nginx start
service mysql restart
service php7.3-fpm start
sleep infinity