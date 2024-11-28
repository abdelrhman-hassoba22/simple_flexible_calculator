#!/$BASH
# you can use this script to do all operations as you like.
# this variable to quit.
q=0
while [ $q -eq 0 ]; do
printf "To enter the operation correctly, first write the numbers you want along with the desired operators without any spaces\n between the numbers and operators. Do not end the operation line with an operator \n to ensure the program produces correct outputs. "
echo "An example for clarification: 1+2+5+7+8"
# this is the main variable.
read -p "Enter your operation here:" opr
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
