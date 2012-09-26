#!/bin/zsh
cd ./chef
git checkout master
git pull origin master
librarian-chef install --verbose
git clone git@github.com:youroute/youroute-cookbook.git ./cookbooks/youroute