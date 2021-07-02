#CERTIFICAT SSL
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=42 Paris/OU=vintran/CN=localhost"

#NGINX
mkdir -p var/www/localhost
ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled

#ACCESS
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

#PHPMYADMIN
#mkdir var/www/localhost/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/localhost/phpmyadmin/
mv ./config.inc.php /var/www/localhost/phpmyadmin/
chmod 660 /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin
service php7.3-fpm start
echo "GRANT ALL ON *.* TO 'vintran'@'localhost' IDENTIFIED BY '123'" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

service nginx start
service php7.3-fpm start
service mysql start

sleep infinity