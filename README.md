# wp-ngrok
Setup [ngrok](https://ngrok.com/) instantly at [VCCW](http://vccw.cc/).

## Settings

Install ngrok by Homebrew.

```
$ brew cask install ngrok
```

## Usage
Please run the follwoing command in the directory where your ```Vagrantfile``` is located.

```
$ git clone https://github.com/naogify/wp-ngrok.git
```

```
$ bash wp-ngrok.sh
```

It will ask you to type your development url.　So, please type it.
Then it will publish temporary url that anyone can access. You can easily unpublish the url by closing the terminal.


## NOTE
This shell script will install [relative-url](https://wordpress.org/plugins/relative-url/) pluguin to replace WordPres's absolute url to relative url.
Then it changes ```WP_SITEURL``` & ```WP_HOME``` to ```http://'.$_SERVER['HTTP_HOST']``` by modifying wp-config.php ( This ```wp-config.php``` is the one at the same directory where ```Vagrantfile``` is located ).

So, please Don't forget to remove [relative-url](https://wordpress.org/plugins/relative-url/) plugin when you move the WordPress from develop environment to your production environment, 
