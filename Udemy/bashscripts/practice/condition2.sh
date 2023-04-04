#!/bin/bash
value=$(ip addr show | grep -v noqueue|grep -ic mtu)
if [ $value -eq 1 ]
then
 echo "one network interface"
elif [ $value -gt 1 ]
then 
 echo "multiple insterface"
else
echo "no interface"
fi
