#!/bin/bash -x
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HOUR=20;
MAX_WORKING_DAYS=20;
NUM_WORKING_DAYS=20;
totalWorkHours=0;
totalWorkingDays=0;
function getWorkingHours()
{
	case $1 in
	$IS_FULL_TIME)
	workingHours=8;;
	$IS_PART_TIME)
	workingHours=4;;
	*)
	workingHours=0;;	
	esac
	echo  $workingHours;
}	
function calDailyWage()
{
	local workHrs=$1
	wage=$(($workHrs*$EMP_RATE_PER_HOUR))
	echo $wage
}
totalSalary=0
counter=0;
declare -A wage
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$(  getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	wage[$totalWorkingDays]="$( calDailyWage $workHours )"
#	empDailyWage[$totalWorkingDays]="$( calDailyWage $workHours )"
#	totalSalary=$totalSalary+$wage

done
((counter++))
totalSalary="$( calDailyWage $totalWorkHours )"
wage[TotalSalary]=$totalSalary
echo "Daily Earnings"  ${wage[@]}
echo "Day" ${!wage[@]}

