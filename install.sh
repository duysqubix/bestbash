#!/bin/bash

BASHRC=$HOME/.bashrc

if [ -L $BASHRC ];then
    echo "symlink found, removing"
    rm $BASHRC

elif [ -f $BASHRC ]; then
    echo "original .bashrc found, making copy"
    mv $BASHRC $BASHRC.old
fi

echo "creating new symlink"
ln -s  $PWD/init $BASHRC
source $BASHRC
