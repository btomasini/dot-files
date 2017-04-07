#!/bin/bash
#
# Installs dot files after backing up current files

function backup_and_copy {

file=$1
path=$2

existing="$HOME/$file"

if [[ -e "$existing" ]]
then
  mv $existing $backupdir
fi

if [[ -d "$file" ]] 
then
  cp -R $file $HOME/$path
else
  cp $file $HOME/$path
fi

}

now=`date +%s`
cwd=$(pwd)
backupdir=~/.dotbackup/$now

if [[ ! -e "$cwd/.vim" ]] 
then
  echo "Please execute install from within the project directory"
  exit 1
fi

mkdir -p $backupdir

backup_and_copy .vimrc
backup_and_copy .vim
backup_and_copy .vrapperrc
backup_and_copy .ideavimrc
backup_and_copy .config/fish .config


