# Docker for CakePHP(full config)
----------------------------------
#### INSTALL
```sh
Download Docker & docker-compose(tool for docker)**
```

```sh
On pre Windows 10 systems without Hyper-V, use Docker Toolbox.
```
----------------------------------

#### Set daemon of docker

```sh
(sudo) dockerd
```

##### Every time you restart, turn on your pc no need to start service of docker (sudo service docker start).
##### There might be troubleshoot conflicts between the daemon.json and startup scripts.
----------------------------------
#### Set config file in .env


```sh 
host 
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
bash_shortcuts >> ~/.bashrc (>> means to apppend not the overwrite).
```

```sh 
docker-compose up / bulid **-> when you change settings in yml file. 
```

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
composer-generate-cake. 
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
make comoposer-up
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
