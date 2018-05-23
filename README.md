# wp-ngrok
Setup [ngrok](https://ngrok.com/) instantly at [VCCW](http://vccw.cc/).

## Settings
Sign up ngrok, and follow the instruction of getting strarted.

1. Download ngrok from the URL bellow.
https://dashboard.ngrok.com/get-started

2. Connect to your account.

```
$ ./ngrok authtoken < your-token >
```

3.Install ngrok.

```
$ brew cask install ngrok
```

## Usage
Please run the follwoing command in the directory where your Vagrantfile is located.

```
$ git clone https://github.com/naogify/wp-ngrok.git
```

```
$ bash wp-ngrok.sh
```

It will ask you to type your development url.　 So, please type it.
Then it will publish temporary url that anyone can access. You can easily unpublish the url by closing the terminal.


## NOTE
This shell scripts will install [relative-url](https://wordpress.org/plugins/relative-url/) pluguin that replace WordPres's absolute url to relative url.
Then change ```WP_SITEURL``` & ```WP_HOME``` to ```http://' . $_SERVER['HTTP_HOST']``` by adding some scripts to wp-config.php.

So, PLEASE NOTE when you move the WordPress to your production environment, remove [relative-url](https://wordpress.org/plugins/relative-url/) plugin, and delete ```define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST']);``` ```define('WP_HOME', 'http://' . $_SERVER['HTTP_HOST']); ``` from your wp-config.php.
