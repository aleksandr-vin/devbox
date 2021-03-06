#!/usr/bin/env bash

echo 'Installing recent Docker (see https://docs.docker.com/installation/ubuntulinux/)'

apt-get update
apt-get install -y wget
wget -qO- https://get.docker.com/ | sh


echo Make docker callable without sudo

usermod -a -G docker vagrant


echo Install docker-compose

curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod -v +x /usr/local/bin/docker-compose

echo Install command completion for docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/1.2.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose


echo Install Emacs

apt-get install -y emacs24-nox

su - vagrant -c "emacs --daemon"


echo Install other packages

apt-get install -y htop fortune cowsay lolcat figlet


echo Install asciinema

curl -sL https://asciinema.org/install | sh


echo Install home directory

(cd /vagrant/home && find . -exec install --verbose --backup --mode=600 --group=vagrant --owner=vagrant --preserve-timestamps -D {} /home/vagrant/{} ";")


echo Installing busybox

docker run --rm busybox busybox

printf '
Some tips:

* `docker run --rm busybox busybox`
* `asciinema rec` to start terminal recording
* `asciinema auth` to auth your recordings
' | /usr/games/cowsay
