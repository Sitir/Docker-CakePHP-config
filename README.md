# Docker for CakePHP(full config) [![Build Status](https://travis-ci.org/patrka54/Docker-CakePHP-config.svg?branch=master)](https://travis-ci.org/patrka54/Docker-CakePHP-config.svg?branch=master)

## Overview

Using docker to developing CakePHP Project. Ofcourse you might use Vagrant to do it but docker has only things you need so entire project is less heavy than entire image of Vagrant.

This project contain (NGINX, PHP 7, MYSQL, PHPMyAdmin, Composer), so You don't to need to install it.

*Always run commands from the main directory of your docker project.

To use it just clone project and clean .git if you want to take entire project but my suggetion is to commit just myapp/your_app_name_project instead of all.

Directory structure:

docker_config: 

              vhost.conf   - nginx config set for cakePHP
              
              DockerFile   - for php container 
              
              php.ini      - for the debug (soon it will be added I need to set few things)
              
.env - config file where you need to set:

              NGINX_HOST - is set to localhost but you can use whatever you want but make sure to set it in /etc/hosts
              
              APP_NAME   - here you need to set your app_name which is also named as your catalouge name
              
              MySQL      - here just set the conig for mySql and make sure to set the same thing in,
                           app.php and instead of localhost use host_mysql.
                           
composer.phar  - just composer so you can use on your server can be deleted, is not used in project yet(soon).

docker-destroy-all.sh -  script clean everywthing usufully WARNING(delete all images & containers from docker)

*Used to for testing but modified may be usufully anywhere you want.

docker-compose.yml   - config file for dokcer compose is set and bulid is passing so do not modified this file.

myapp   - is cataloge which composer create so please do not create it by yourself when you create new project, only when 

you want to do it from exsiting project so you need to create this folder and inside the project you need to set the same folder 

name as App_NAME in .env. Bellow there is instruction in install how to use with via git.




----------------------------------
#### INSTALL
```sh
Download Docker & docker-compose(tool for docker)**
```

```sh
On pre Windows 10 systems without Hyper-V, use Docker Toolbox.
```
----------------------------------

#### Turn on service of docker so it will always run on startup.

```sh
(sudo) dockerd
```

##### Every time you restart, turn on your pc no need to start service of docker (sudo service docker start).
##### There might be troubleshoot conflicts between the daemon.json and startup scripts.
----------------------------------
#### Set config file in .env


```sh 
NGINX_HOST 
```

```sh
app name 
```

```sh 
Mysql Config(host,database,root,user,pass) 
```

----------------------------------
#### Don't modify any other files!
----------------------------------

## How to Run
can be lunch in two ways.
First is using command line or aliases in ./bashrc look in file bash_shortcuts .:

copy entire file in to the bashrc.

```sh 
bash_shortcuts >> ~/.bashrc 
```

(>> means to apppend not the overwrite).

```sh 
docker-compose up / bulid 
```

**-> when you change settings in yml file. 

#### Setting the path to docker-compose 

```sh
export PATH=${PATH}:/usr/local/bin/
```

It will be added in the bash_shortcuts.


Second is using Make file liek that ex: 

```sh
make docker-start 
```

**Make sure to have MakeFile in main directory when lunching this command.**


When everything is set depeneds on your project of cakePHP.

New Project:

Using MakeFile using app name in .env 

```sh 
sudo make composer-generate-cake. 
```

second,

**Make sure to set at the end app name.**

After that this container will be terminaed and It'll be no running anylonger. 

 ```sh 
 docker run --rm -v $(shell pwd)/myapp:/app composer create-project --prefer-dist --ignore-platform-reqs cakephp/app ${APP_NAME} 
 ```

Already existed Project:

Via git

```sh 
git clone project http://yourproject.git 
```

clone the project in to the myapp in main folder like that : folderStructure/myapp/__yourrepository__

than using make: **alawys remember to set catalogue name same as name app in .env**

```sh 
sudo make comoposer-up
```

or

```sh
docker run --rm -v $(shell pwd)/myapp/${APP_NAME}:/app composer update
```


----------------------------------

This project use the following ports :

| Server     | Port |
|------------|------|
| MySQL      | 8989 |
| PHPMyAdmin | 8070 |
| Nginx      | 8080 |

----------------------------------
