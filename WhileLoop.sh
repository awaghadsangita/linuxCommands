#!/bin/bash -x
valid=true
isFullTime=1;
isPartTime=2;
workingHour=50;
ratePerHour=400;
totalHour=0
count=1
while [ $valid ]
do
	workingType=$(( RANDOM%3 ))
	case $workingType in
	$isFullTime)
	workedHour=10;;
	$isPartTime)
	workedHour=5;;
	*)
	workedHour=0;;
	esac
	$totalHour=$(( $workedHour+$totalHour ))
	if [ $totalHour -le $workingHour ];
	then
		break;
	fi
	pay=$(( $workedHour*$ratePerHour ))
	
done

