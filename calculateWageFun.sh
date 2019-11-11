#!/bin/bash -x

function fullTimeFunc()
{
	echo 10;
}
function partTimeFunc()
{
	echo 5;
}
function absent()
{
	echo 0;
}
ratePerHour=500;
workingType=$((RANDOM%3))
if [ $workingType -eq 1 ]
then
	result="$( fullTimeFunc )"
elif [ $workingType -eq 2 ]
then
	result="$( partTimeFunc )"
else
	result="$( absent )"
fi

pay=$(( $result*$ratePerHour ));
