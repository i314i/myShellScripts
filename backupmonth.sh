#!/bin/bash
# ====================================================================
# 使用者參數輸入位置：
# basedir=你用來儲存此腳本所預計備份的資料之目錄(請獨立檔案系統)
date="$(date +'%Y.%m.%y')"
basedir=~/MEGA/backup/backupmonth/backmn_$date

# ====================================================================
# 底下請不要修改了！用預設值即可！
PATH=/bin:/usr/bin:/sbin:/usr/sbin; export PATH
export LANG=C

# 設定要備份的服務的設定檔，以及備份的目錄
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

