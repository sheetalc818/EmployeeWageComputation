#!/bin/bash -x

#Print Welcome message
echo "-----Welcome To Employee wage Computation-----"

#---Checking for Employee Present or not---

#Check Emp
checkEmp=$((RANDOM%2))

#Variables
isPresent=1;
wagePerHr=20;
empHr=8;

#---Calculating Employee Daily Wage who present---
if [ $checkEmp -eq $isPresent ]
then
   echo "Employee is Present"
	echo "salary=$(( $wagePerHr*$empHr ))"
else
   echo "Employee is Absent"
	echo "salary=0"
fi
