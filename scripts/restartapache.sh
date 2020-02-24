#!/bin/bash

cp -rf /var/www/html/index.html /var/www/html/index.php
service httpd restart > /var/log/restartapache.out 2>&1
