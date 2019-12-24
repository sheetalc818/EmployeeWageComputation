#!/bin/bash -x

#Print Welcome message
echo "-----Welcome To Employee wage Computation-----"

#---Checking for Employee Present or not---

#Check Emp
checkEmp=$((RANDOM%2))

#Variables
isPresent=1;

#---Calculating Employee Daily Wage who present---
if [ $checkEmp -eq $isPresent ]
then
   echo "Employee is Present"
else
   echo "Employee is Absent"
fi
