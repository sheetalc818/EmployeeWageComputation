#!/bin/bash -x

#CONSTANTS FOR THE PROGRAMS
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

#FUNCTION-To get Working hrs
getWorkingHours() 
{
	case $1 in
				$IS_FULL_TIME)
								workHours=8
								;;
				$IS_PART_TIME)
								workHours=4
								;;
			   *)
								workHours=0
								;;
	esac
	echo $workHours
}

#FUNCTION-To Calculate DailyWage
calDailyWage()
{
	local workHrs=$1;
	wage=$(($workHrs*$EMP_RATE_PER_HR));
	echo $wage
}

#Calculating Total working hrs by calling getWorkingHours()
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours=$( getWorkingHours $((RANDOM%3)) )
	totalWorkHours=$(($totalWorkHours+$workHours))
	empWage[$totalWorkingDays]=$(calDailyWage $workHours)
done

#Calculating Total salary
totalSalary=$(calDailyWage $totalWorkHours);
empWage+=${totalSalary}
echo "Daily wage with total wage :" ${empWage[@]}
