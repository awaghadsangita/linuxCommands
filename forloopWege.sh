#!/bin/bash  -x
isFullTime=1;
isPartTime=2;
ratePerHour=500;
total=0;
for (( counter=1; counter<=20; counter++ ))
do
	workingType=$(( RANDOM%3 ));
	case $workingType in
	$isFULLTime)
		workingHour=8;;
	$isPartTime)
		workingHour=4;;
	*)
		workingHour=0;;
	esac
	pay=$(( $workingHour*$ratePerHour ))
	total=$(( $total+$pay ));
done
