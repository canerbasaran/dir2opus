#!/bin/bash

if [ "$UID" -ne 0 ]
then
   echo "You are not root: terminating"
   exit 2
fi

if [ -e "/usr/bin/dir2opus" ]
then
   echo "/usr/bin/dir2opus exists! Overwrite? (y/n): "
   read answ
   if [ $answ == "n" ]
   then
      exit 1
   fi
fi
cp dir2opus /usr/bin/dir2opus
chown root:root /usr/bin/dir2opus
chmod 755 /usr/bin/dir2opus

if [ -e "/usr/man/man1/dir2opus.1" ]
then
   echo "/usr/man/man1/dir2opus.1 exists! Overwrite? (y/n): "
   read answ
   if [ $answ == "n" ]
   then
      exit 1
   fi
fi
cp dir2opus.1 /usr/man/man1/dir2opus.1
chown root:root /usr/man/man1/dir2opus.1
chmod 644 /usr/man/man1/dir2opus.1


echo "dir2opus is now installed. Enjoy..."

