# docker-cakebots
Docker compose for burbubots/cakebots<br /><br />
Creates two docker images, one containing a MySQL(MariaDB) Server with the database of the project and <br />
another one containing an Apache Web Server with the framework CakePHP 4.3 and the MVC files of the project.<br />


Install instructions:<br />
This is for docker, so you REALLY need docker and docker-compose. It can be use in Windows or MAC systems. Read the fine tutorials for this.<br />
Install git or download ZIP package.<br />
<br />

(Debian/Ubuntu)<br /> 
sudo apt-get install docker docker-compose git <br />
git clone https://github.com/burbubots/docker-cakebots.git <br />
<br />
Execute ./crear_docker to create the images and containers<br />
Let your system create two debian images and two containers, named 'dbbots' and 'webbots'. <br />
You can enter in the container 'webbots' with the shell command 'docker exec -it webbots bash' or you can use the script this way:'./entra webbots'<br />
The shell 'mc' is installed, so you can edit and execute commands with ease inside the container. <br /><br />
The application runs initially in http://localhost:8800/bots/tradeaccounts<br />
Another routes are: <br/>
http://localhost:8800/adminer/?server=dbbots&username=cakeuser&db=trading (password 'cakepass') for the Adminer application, a front-end for MariaDB and the database.<br />
http://localhost:8800/icecoder for the ICECoder app, an on-line editor. It needs write access for the owner and group of Apache (www-data:www-data) 
so if you are editing directly from your system you might change the permissions and ICECoder will fail its writing access. <br />

<br />
A folder with name 'web' appears after installation. It's a shared folder with the container 'webbots' and contains the full project from https://github.com/burbubots/cakebots <br />
You can edit files in this folder and the changes are seen in the application.  <br /> <br /><br />
Resetting the project:<br />
Use the script 'reset.sh' to stop and delete the docker containers. All the information of the database will be lost, so maybe you want backup before doing this.<br />
If you only want to stop the containers use 'docker stop webbots'.<br />
The next step for resseting is deleting the docker images. Use 'docker images' to list the images, copy the IMAGE_ID and do 'docker rmi [IMAGE_ID]'.<br />
At last, you can remove the folder 'web' for a full clean restart from the repositories in git o for tidy your system. <br /><br />
Some notes: <br />
You can set the containers for start with your system start just un-commenting the lines with 'restart: always' in the file docker-compose.yml and re-running './crear_docker'. <br />

