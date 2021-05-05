#!/bin/bash

COUNTER=0
         while [  $COUNTER -lt 10000 ]; do
             echo $(( RANDOM - ( RANDOM % RANDOM ) )) > looper.txt
	     git add looper.txt
             git commit -m "Commits: Loop at $(date -u +%D-%T%P)"
             let COUNTER=COUNTER+1 
         done
git push origin master
