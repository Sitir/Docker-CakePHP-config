# Docker for CakePHP(full config)

#### INSTALL
>Download Docker & docker-compose(tool for docker)
&nbsp;
>*On pre Windows 10 systems without Hyper-V, use Docker Toolbox.
***
&nbsp;
#### Set daemon of docker
>(sudo) dockerd&nbsp;
##### Every time you restart, turn on your pc no need to start service of docker (sudo service docker start).&nbsp;
##### There might be troubleshoot conflicts between the daemon.json and startup scripts.&nbsp;

#### Set config file in .env
> host&nbsp;
> app name&nbsp;
> Mysql Config(host,database,root,user,pass)&nbsp;
***
#### Don't modify any other files!
***

## How to Run
can be lunch in two ways.
First is using command line or aliases in ./bashrc look in file bash_shorcuts_functions.&nbsp;
&nbsp;
**Second is using Make file liek that ex:** <br />

>make docker-start 

###### Make sure to have MakeFile in main directory when lunching this command.

**When everything is set depeneds on your project of cakePHP.**
&nbsp;
**New Project:** &nbsp;
**Using MakeFile << using app name in .env >>** &nbsp;
>composer-generate-cake&nbsp;
&nbsp;
second,&nbsp;
**Make sure to set at the end app name.** &nbsp;
**After that this container will be terminaed and It'll be no running anylonger.** &nbsp;&nbsp;
> docker run --rm -v composer create-project --prefer-dist --ignore-platform-reqs cakephp/app {{APP_NAME SET MANUALLY}}


