# Docker for CakePHP(full config)

#### INSTALL
>Download Docker & docker-compose(tool for docker)

>*On pre Windows 10 systems without Hyper-V, use Docker Toolbox.

#### Set daemon of docker
>(sudo) dockerd<br />
##### Every time you restart, turn on your pc no need to start service of docker (sudo service docker start).<br />
##### There might be troubleshoot conflicts between the daemon.json and startup scripts.<br />

#### Set config file in .env
> host<br />
> app name<br />
> Mysql Config(host,database,root,user,pass)<br />

#### Don't modify any other files!

## How to Run
**can be lunch in two ways.**
First is using command line or aliases in ./bashrc look in file bash_shorcuts_functions. <br />
<br />
**Second is using Make file liek that ex:** <br />
> make docker-start 
<br />
**Make sure to have MakeFile in main directory when lunching this command.**

<br />
<br />
**When everything is set depeneds on your project of cakePHP.**
<br />
**New Project:** <br />
**Using MakeFile << using app name in .env >>** <br />
> composer-generate-cake
<br />
second,<br />
**Make sure to set at the end app name.<br />
After that this container will be terminaed and It'll be no running anylonger.**
> docker run --rm -v composer create-project --prefer-dist --ignore-platform-reqs cakephp/app {{APP_NAME SET MANUALLY}}


