#!/bin/bash -x
isFullTime=1;
isPartTime=2;
workingHour=50;
ratePerHour=500;

for(( counter=1; counter<20; counter++ ))
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
	totalHour=$(($workedHour+$totalHour))
	if [ $totalHour -gt 50 ];
	then
		break;
	fi
 
	salary=$(($ratePerHour*$workedHour))

done
