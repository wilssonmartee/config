#!/bin/sh
# Load reflector daily
#

date=$(date +%D)
lastsync="$(cat .config/reflector/.lastsync.txt)"

if [ "$date" != "$lastsync" ] ; then
echo ":: Updating mirrorlist..."
> .config/reflector/.lastsync.txt
echo $date >> .config/reflector/.lastsync.txt
sudo reflector --country 'United States' -l 5 --sort rate --save /etc/pacman.d/mirrorlist
fi
exit
