# sinusbot

Docker container for the TeamSpeak 3 SinusBot by Michael Friese.

TeamSpeak 3 SinusBot Homepage: https://frie.se/ts3bot/

Edited by zdzichu6969


# Install

# Debian 7/8 Install :
 
apt-get update  
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 
nano /etc/apt/sources.list.d/docker.list

On Debian Wheezy (7)
deb https://apt.dockerproject.org/repo debian-wheezy main

On Debian Jessie (8)
deb https://apt.dockerproject.org/repo debian-jessie main

On Debian Stretch/Sid
deb https://apt.dockerproject.org/repo debian-stretch main
 
 
apt-get update
sudo apt-get install docker-engine (If you have an Error with init-system-helpers make following)

For the error ONLY Leave it when you have no ERRORS!:
init-system-helpers
 
Just add to /etc/apt/sources.list
deb http://http.debian.net/debian wheezy-backports main
 
apt-get update && apt-get install init-system-helpers && apt-get install docker-engine
 
# Start

sudo service docker start
sudo docker run hello-world
 
# Build Cntainer

adduser tsbot
sudo usermod -aG docker tsbot
cd /home/tsbot/
git clone https://github.com/zdzichu6969/sinusbot.git

cd sinusbot
chmod +x deploy.sh
docker build -t ts3soundboard098 /home/tsbot/sinusbot

# Start Container

su tsbot
cd /home/tsbot/sinusbot
docker run --restart=always -d --name bot0 -m=128M -p 1000:8087 ts3soundboard098
docker run --restart=always -d --name bot1 -m=128M -p 1001:8087 ts3soundboard098
docker run --restart=always -d --name bot2 -m=128M -p 1002:8087 ts3soundboard098

and more ...

Launch in browser: http://<IP>:100X
