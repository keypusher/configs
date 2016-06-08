#!/bin/sh

node=$1
echo 'Syncing To: ' $1

scp -r ".vim" $1:/root
scp ".vimrc" $1:/root


