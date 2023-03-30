echo -n "Enter the birthdate (mm-dd-yyyy): "
read bdate

bmonth=${bdate:0:2}
bday=${bdate:3:2}
byear=${bdate:6:4}

cdate=`date +%m-%d-%Y`

cmonth=${cdate:0:2}
cday=${cdate:3:2}
cyear=${cdate:6:4}

if [[ "$cmonth" -lt "$bmonth" ]] || [[ "$cmonth" -eq "$bmonth" && "$cday" -lt "$bday" ]]
then
  let age=cyear-byear-1
else
  let age=cyear-byear
fi

echo "Age = "$age

