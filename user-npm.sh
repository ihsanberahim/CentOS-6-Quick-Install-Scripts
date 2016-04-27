#!/bin/bash

npm -v
mkdir ~/.node
echo "prefix = ~/.node" >> ~/.npmrc
echo 'PATH="$HOME/.node/bin:$PATH"' >> ~/.bashrc
echo 'NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"' >> ~/.bashrc
echo 'MANPATH="$HOME/.node/share/man:$MANPATH"' >> ~/.bashrc
source ~/.bashrc
