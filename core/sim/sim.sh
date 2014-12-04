#!/bin/bash
EXTENSION=`echo "$1" | cut -d'.' -f2`
has=0
for i in ../data/$2/ac/*.$EXTENSION
do 
	sim=`/usr/bin/sim_$EXTENSION -p $1 $i |grep ^$1|awk '{print $4}'`
	if [ ! -z $sim ] && [ $sim -gt 50 ]
	then 
		sim_s_id=`basename $i .$EXTENSION`
		echo "$sim $sim_s_id" >> sim
		has=$sim
	fi
done
exit has;
