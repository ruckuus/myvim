#!/bin/bash

echo "Installing Vim plugins, this is going to wipe out ~/.vim"
echo "Backups available in ~/vim-dir-backup"

BACKUPDIR=$HOME/vim-dir-backup
VIMDIR=$HOME/.vim
mkdir -p $BACKUPDIR
echo "Backing up"
cp -av $VIMDIR/* $BACKUPDIR
rm -rfv $VIMDIR/*
cp -av $(pwd)/* $VIMDIR

echo "Done"
