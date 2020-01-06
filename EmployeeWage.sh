#!/bin/bash -x

#Print Welcome message
echo "-----Welcome To Employee wage Computation-----"

#---Checking for Employee Present or not---

#Check Emp
checkEmp=$((RANDOM%3))

#CONSTANT
isPartTime=1;
isFullTime=2;
wagePerHr=20;
workingDays=20;
MAX_HRS_IN_MONTH=100;

#VARIABLES
totalWorkingDays=0;
=======
#CONSTANTS FOR THE PROGRAMS
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

# #Checking for Emp Hrs
# while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $workingDays ]]
# do
# 	((totalWorkingDays++))

# 	#Check Emp
# 	checkEmp=$((RANDOM%3))

# 	#---Solving using Case---
# 	case $checkEmp in
#    					$isFullTime)
#             						empHr=8
#             						;;
#    					$isPartTime)
#             						empHr=4
#             						;;
#    					*)
#             						empHr=0
# 							;;
# 	esac
# 	#Calculating Total Hrs of Employee
# 	totalEmpHr=$(( $totalEmpHr+$empHr ))


#FUNCTION
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

#Checking for Total Emp Hrs
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours=$( getWorkingHours $((RANDOM%3)) )
	totalWorkHours=$(($totalWorkHours+$workHours))
done
#Calculating Total salary
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
