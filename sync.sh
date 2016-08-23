#!/bin/sh

#./sync "folder"
if [ $# = 2 ]
then
    mv html/$1/public/index.php index.php.saved
	rsync --size-only  $1 html/$1/
	#rm -rf /*
	# update project/ to your directory name
	#cp -a project/public/* www
	#cp project/public/.* www
	#rm -rf www/index.php
	mv index.php.saved html/$1/public/index.php
else
        echo "Requiert un argument exactement.";
fi