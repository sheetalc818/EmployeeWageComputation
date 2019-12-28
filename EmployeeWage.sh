#!/bin/bash -x

#Print Welcome message
echo "-----Welcome To Employee wage Computation-----"

#---Checking for Employee Present or not---

#Check Emp
checkEmp=$((RANDOM%3))

#Variables
isPartTime=1;
isFullTime=2;
wagePerHr=20;
workingDays=20;

#Calculating salary for 20 days

for (( day=1; day<=$workingDays; day++ ))
do
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

#Calculating salary
salary=$(( $wagePerHr*$empHr ))
echo "Salary is : $salary"

#Calculating Total salary
totalSalary=$(( $totalSalary + $salary ))
echo "Total Salary is : $totalSalary"
done
