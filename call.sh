#!/$BASH
# you can use this script to do all operations as you like.
# this variable to quit.
q=0
while [ $q -eq 0 ]; do
echo "Do not place any operation at the beginning or the end."
# this is the main variable.
read -ep "Enter your operation here:" opr
echo $opr |bc  2> /dev/null
check=`echo $?`
if [ "$check" -eq 0 ]; then
printf ""
else 
    echo "The operation is rong."
fi

read -p "if you want to quit press q, or back to main interface, press b " ex
if [ $ex = b ]; then
printf ""
elif [ $ex = q ]; then
q=$[++1]
fi 
done
