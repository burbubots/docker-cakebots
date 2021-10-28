# docker-cakebots
Docker compose for burbubots/cakebots<br /><br />
Creates two docker images, one containing a MySQL(MariaDB) Server with the database of the proyect and <br />
another one containing an Apache Web Server with the framework CakePHP 4.3 and the MVC files of the proyect.<br />


Install instructions:<br />
Install git or download package zip.<br />
<br />

(Debian/Ubuntu)<br /> 
sudo apt-get install git <br />
git clone https://github.com/burbubots/docker-cakebots.git <br />
<br />
Execute ./crear_docker<br />
Let your system create two debian images and two containers, named 'dbbots' and 'webbots'. <br />
<br />
A folder name 'web' appears. It's a shared folder with the container 'webbots' and contains the full proyect from https://github.com/burbubots/cakebots <br />
You can edit files in this folder and the changes are seen in the application.  <br /> <br />











