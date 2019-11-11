#!/bin/bash -x
isFullTime=1;
isPartTime=2;
timeToWork=$(( RANDOM%3 ));
ratePerHour=500;
case $timeToWork in
	$isFullTime)
		wokingHour=8;;
	$isPartTime)
   	workingHour=4;;
	*)
		workingHour=0;;
esac
pay=$(( $workingHour * $ratePerHour ))
#echo "Salary of Employee: "$pay


