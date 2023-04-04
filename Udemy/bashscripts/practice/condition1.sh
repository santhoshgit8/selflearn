read -p "enter any no" num
echo

if [ $num -gt 100 ]
then 
  sleep 3 
  echo "$num value is greate than 100"
else
 echo "$num value is not greater than 100"
fi
date
