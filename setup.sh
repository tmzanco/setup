#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

sudo apt-get -y update

sudo apt-get install -y git
sudo apt-get install -y curl

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

sudo apt-get install -y mysql-server

# python / django / postgres connectors
sudo apt-get install -y python-django
sudo apt-get install -y python-psycopg2

wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc
sudo apt-get install -y mercurial

# for email
sudo apt-get install -y postfix

# for rss
sudo pip install -y feedparser

# for html parsing
sudo apt-get install -y python-bs4



# git pull and install dotfiles as well
# cd $HOME
# if [ -d ./dotfiles/ ]; then
#     mv dotfiles dotfiles.old
# fi
# if [ -d .emacs.d/ ]; then
#     mv .emacs.d .emacs.d~
# fi
# git clone https://github.com/startup-class/dotfiles.git
# ln -sb dotfiles/.screenrc .
# ln -sb dotfiles/.bash_profile .
# ln -sb dotfiles/.bashrc .
# ln -sb dotfiles/.bashrc_custom .
# ln -sf dotfiles/.emacs.d .

