#!/bin/bash -x

x=$(( RANDOM%3 ));
ratePerHour=500;
if [ $x == 1 ];
then
	workingHour=8
	echo "Employee Present full time "

elif [ $x == 2 ]; then
	workingHour=4
	echo "Employee works Part time"

else
	workingHour=0
	echo "Employee Not Present"

fi
pay=$(( $workingHour* $ratePerHour ));
echo $pay;
