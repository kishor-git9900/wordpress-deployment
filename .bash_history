sudo apt update && sudo apt upgrade -y
sudo apt install ufw
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable
sudo apt install nginx -y
systemctl status nginx
sudo nano /etc/nginx/sites-available/wordpress
sudo ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
sudo apt install mysql-server -y
sudo mysql_secure_installation
sudo mysql
ERROR 1819 (HY000): Your password does not satisfy the current policy requirements
mysql> GRANT ALL PRIVILEGES ON wordpress1.* TO 'wp_user'@'15.206.68.34';
ERROR 1410 (42000): You are not allowed to create a user with GRANT
mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)
sudo mysql
sudo apt install php-fpm php-mysql -y
php -v
sudo mkdir -p /var/www/wordpress
sudo chown -R www-data:www-data /var/www/wordpress
sudo chmod -R 755 /var/www/wordpress
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
sudo mv wordpress/* /var/www/wordpress/
cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
nano /var/www/wordpress/wp-config.php
cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
sudo cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
sudo nano /var/www/wordpress/wp-config.php
sudo systemctl restart nginx php8.1-fpm
sudo systemctl restart nginx php8.3-fpm
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl status mysql
sudo ufw status
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 3306/tcp  # Only if you're connecting directly to MySQL
sudo ufw allow 443/tcp
sudo ufw status
nslookup bproject.servemp3.com
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
nslookup bproject.servemp3.com
sudo systemctl restart mysql
sudo nginx -t
sudo systemctl reload nginx
sudo chown -R www-data:www-data /var/www/wordpress
sudo chmod -R 755 /var/www/wordpress
sudo tail -f /var/log/nginx/error.log
sudo tail -f /var/log/php8.1-fpm.log
sudo tail -f /var/log/php8.3-fpm.log
sudo reboot
