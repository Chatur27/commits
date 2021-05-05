#!/bin/bash

COUNTER=0
         while [  $COUNTER -lt 100000 ]; do
             echo $(( RANDOM - ( RANDOM % RANDOM ) )) > looper.txt
	     git add looper.txt
             git commit -m "Commits: Loop at $(date -u +%D-%T%P)"
	     sleep 1
             let COUNTER=COUNTER+1
	     if [COUNTER==20000]
	     then
		git push origin master
	     elif [COUNTER==40000]
	     then
		git push origin master
	     elif [COUNTER==60000]
	     then
		git push origin master
	     elif [COUNTER==80000]
	     then
		git push origin master
	     elif [COUNTER==100000]
	     then
	     	git push origin master
	     fi
         done

