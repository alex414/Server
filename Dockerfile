FROM debian:buster

RUN apt update && \
    apt -y install nginx && \
	apt -y install nginx mariadb-server php-mbstring php-fpm php-mysql && \
    apt -y install openssl && \
    apt -y install wget 

RUN	wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz && \
	tar -xzvf phpMyAdmin-5.0.1-english.tar.gz && \
	mv phpMyAdmin-5.0.1-english /var/www/html/phpmyadmin && \
	chown --recursive www-data:www-data /var/www/html/phpmyadmin

RUN wget https://es.wordpress.org/latest-es_ES.tar.gz && \
	tar -xzvf latest-es_ES.tar.gz && \
	mv wordpress /var/www/html/wordpress

RUN chmod 700 /etc/ssl/private && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/nginx_server.key -out /etc/ssl/certs/nginx_server.crt && \
    openssl dhparam -out /etc/nginx/dhparam.pem 1000 && \
    chown -R www-data:www-data /var/www/* && \
    chmod -R 755 /var/www/*

RUN rm -rf /var/www/html/index.nginx-debian.html

COPY srcs/index.html /var/www/html/
COPY srcs/wp-config.php /var/www/html/wordpress/
COPY srcs/localhost /etc/nginx/sites-enabled/
COPY srcs/config.inc.php /var/www/html/phpmyadmin
COPY srcs/configbase.sql ./
COPY srcs/localhost.sql ./

CMD service mysql start && \
	mysql -u root < ./configbase.sql && \
	mysql -u root wordpress < ./localhost.sql && \	
	service php7.3-fpm start && \
	service nginx start && \
	bash