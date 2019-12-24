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

#---Calculating Employee Daily Wage who present---
if [ $checkEmp -eq $isFullTime ]
then
   empHr=8;
elif [ $checkEmp -eq $isPartTime ]
then
   empHr=4;
else
	empHr=0;
fi

salary=$(( $wagePerHr*$empHr ))
echo "Salary is : $salary"
