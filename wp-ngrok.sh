#!/usr/bin/env bash

set -ex;

function SetupWp() {

echo "type the url of your develop environment"
read input

wp --ssh=vagrant:$input:/var/www/html plugin install root-relative-urls --activate
echo 'define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST']);' >> wp-config.php
echo 'define('WP_HOME', 'http://' . $_SERVER['HTTP_HOST']);' >> wp-config.php

ngrok http -host-header=rewrite $input:80

}

SetupWp
echo 'Success'
