#!/bin/bash

yum install -y git-core nodejs npm rubygems ruby-devel

gem update --system
gem install compass

npm install -g grunt grunt-cli gulp yo

echo "Install yourself";
echo "npm install -g generator-angular"
echo "npm install -g generator-gulp-angular"
