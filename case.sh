randomCheck=$((RANDOM%3));
perHourSalary=20;
workingHour=1;
case $randomCheck in
0)
echo "Employee is Absent";
workingHour=0;
;;
1)
echo "Employee is Present";
workingHour=9;
;;
2)
echo "Employee is working as part time";
workingHour=4;
;;
*)
echo "not matching";
esac
salary=$(($perHourSalary * $workingHour));
echo "Employee has earned $salary $today";

