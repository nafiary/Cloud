#!/usr/bin/env bash
apt-get update
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

#----- rvm -----#
#apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#curl -sSL https://get.rvm.io | bash -s stable
#source ~/.rvm/scripts/rvm
#rvm install 2.4.0
#rvm use 2.4.0 --default
#ruby -v

#----- install bundler -----#
gem install bundler

#----- setting up git -----#
git config --global color.ui true
git config --global user.name "nafiary"
git config --global user.email "nafia.ry@gmail.com"
ssh-keygen -t rsa -b 4096 -C "nafia.ry@gmail.com"

cat ~/.ssh/id_rsa.pub

#----- install rails -----#
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get install -y nodejs

gem install rails -v 5.0.1
