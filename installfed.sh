#!/bin/bash

sudo dnf update
sudo dnf install vlc -y
sudo dnf install unzip -y
sudo dnf install icedtea-web java-openjdk -y
sudo dnf install gimp -y
sudo dnf install pidgin -y
sudo dnf install qbittorrent -y
sudo dnf install VirtualBox -y
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-steam.repo
sudo dnf install steam -y
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install spotify-client -y
sudo dnf install wine -y
sudo dnf install youtube-dl -y
sudo dnf install simple-scan -y
sudo dnf install mediawriter -y
sudo dnf install libappindicator -y

sudo dnf install emacs -y
sudo dnf install gcc -y
sudo dnf install python3 -y
sudo dnf install nano -y
sudo dnf install npm -y
sudo npm i -g nodemon lodash
sudo dnf install $(curl -sL "https://api.github.com/repos/atom/atom/releases/latest" | grep "https.*atom.x86_64.rpm" | cut -d '"' -f 4) -y
sudo dnf install mysql -y
#sudo yum install -y mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-tools
sudo dnf install node -y

sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo echo "fastestmirror=true" >> /etc/dnf/dnf.conf

sudo dnf copr enable kwizart/fedy
sudo dnf install fedy -y

echo "Finished. Don't forget to install Atom editor, its packages and settings, hyper.is, add message to /etc/yum.repos.d/mongodb-org-4.2.repo and uncomment line 28 to install mongodb." 


