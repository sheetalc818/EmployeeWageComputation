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
totalEmpHr=0;

#Checking for Emp Hrs
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))

	#Check Emp
	checkEmp=$((RANDOM%3))

	#---Solving using Case---
	case $checkEmp in
   					$isFullTime)
            						empHr=8
            						;;
   					$isPartTime)
            						empHr=4
            						;;
   					*)
            						empHr=0
							;;
	esac
	#Calculating Total Hrs of Employee
	totalEmpHr=$(( $totalEmpHr+$empHr ))

done

#Calculating Total salary
totalSalary=$(( $totalEmpHr*$wagePerHr ))
echo "Total Salary is : $totalSalary"

