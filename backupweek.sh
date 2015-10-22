#!/bin/bash
# =========================================================
date="$(date +'%Y.%m.%y')"
basedir=~/MEGA/backup/backupweek/backwk_$date

# =========================================================
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C
basefile1=$basedir/html.tar.bz2
basefile2=$basedir/Downloads.tar.bz2
basefile3=$basedir/win_ubuntu_share.tar.bz2
basefile4=$basedir/Desktop.tar.bz2
basefile5=$basedir/NCTU.tar.bz2

[ ! -d "$basedir" ] && mkdir $basedir

cd /var/www
  tar -jpc -f $basefile1 html
cd ~
  tar -jpc -f $basefile2 Downloads
cd ~
  tar -jpc -f $basefile3 win_ubuntu_share
cd ~
  tar -jpc -f $basefile4 Desktop
cd ~
  tar -jpc -f $basefile5 hungi/NCTU

cd $basedir
cd ..
  tar -jpc -f backwk_$date.tar.bz2 backwk_$date
  rm -r backwk_$date
