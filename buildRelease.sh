git pull
./fbt updater_package
DATE_VAR=`date +%m%d`
TIME_VAR=`date +%H%M`
VER_VAR=`cat scripts/version.py | awk '/VERSION/{ gsub(/[",]/,"",$2); print $2}' | tail -1`
mv dist/f7-C/flipper-z-f7-update-RM420FAP.tgz "$VER_VAR-$DATE_VAR-RM-$TIME_VAR.tgz"
