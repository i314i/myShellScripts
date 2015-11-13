#!/bin/bash
# ====================================================================
date="$(date +'%Y.%m.%d')"
basedir=/home/i314i/application/MEGA/backup/backupmonth/backmn_$date

# ====================================================================
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C

basefile1=$basedir/etc.tar.bz2
basefile2=$basedir/var.tar.bz2
basefile3=$basedir/usr.tar.bz2
[ ! -d "$basedir" ] && mkdir $basedir

cd /
  tar -jpc -f $basefile1 etc
cd /
  tar -jpc -f $basefile2 var
cd /
  tar -jpc -f $basefile3 usr

cd $basedir
cd ..
  tar -jpc -f backmn_$date.tar.bz2 backmn_$date
  rm -r backmn_$date

