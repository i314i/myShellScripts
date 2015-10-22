#!/bin/bash
# ====================================================================
# �ϥΪ̰Ѽƿ�J��m�G
# basedir=�A�Ψ��x�s���}���ҹw�p�ƥ�����Ƥ��ؿ�(�пW���ɮרt��)
date="$(date +'%Y.%m.%y')"
basedir=~/MEGA/backup/backupmonth/backmn_$date

# ====================================================================
# ���U�Ф��n�ק�F�I�ιw�]�ȧY�i�I
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C

# �]�w�n�ƥ����A�Ȫ��]�w�ɡA�H�γƥ����ؿ�
basefile1=$basedir/etc.tar.bz2
basefile2=$basedir/var.tar.bz2
basefile3=$basedir/usr.tar.bz2
[ ! -d "$basedir" ] && mkdir $basedir

cd /
  sudo tar -jpc -f $basefile1 etc
cd /
  sudo tar -jpc -f $basefile2 var
cd /
  sudo tar -jpc -f $basefile3 usr

cd $basedir
cd ..
  tar -jpc -f backmn_$date.tar.bz2 backmn_$date
  rm -r backmn_$date

