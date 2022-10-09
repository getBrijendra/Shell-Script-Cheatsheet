#!/bin/bash
#shebang construct - alert the system that a shell script is being started.
#chmod +x test.sh - for providing permission to execute the script.

echo "Hello World"

#read command which takes the input from the keyboard and assigns it as the value of the variable
# read PERSON
# echo "Hello, $PERSON"

#readonly PERSON  -- this will make value cannot be changed.

#The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).
#define variable and access it, update them, types
var='string'
echo $var

NAME="Zara Ali"
unset NAME #cannot use the unset command to unset variables that are marked readonly.
echo $NAME "unsetting NAME"

#variable types - local variable and environment variable (available to child process as well).

#Special variable -
echo $$     #  $ character represents the process ID number, or PID, of the current shell
echo $0     # The filename of the current script.
echo $1     # $n - These variables correspond to the arguments with which a script was invoked.
echo $#     # The number of arguments supplied to a script.
echo $*     # All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
echo $@     # All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
echo $?     # The exit status of the last command executed.
echo $$     # The process number of the current shell.
echo $!     # The process number of the last background command.


#-------------------------ARRAY--------

#defining array to store many variables.
arr=(Brijendra Prajapati 10 False)            #array_name=(value1 ... valuen)
echo $arr[0]

#${array_name[*]}, ${array_name[@]}  -->   access all the items in an array
echo ${arr[*]}
echo ${arr[1]}

#To print elements in range --> ${ARRAYNAME[WHICH_ELEMENT]:STARTING_INDEX:COUNT_ELEMENT}
echo ${arr[@]:1:2}

# Size of an Array
echo ${#arr[@]}    

#To delete Array Variable in Shell Script?
unset arr[1] #to delete specific index.
unset arr #to dlete whole arr

#----------------------------------------

#-------------------Airthmatic Operation ----------------------
#Bourne shell didn't originally have any mechanism to perform simple arithmetic operations but it uses external programs, either awk or expr.
val=`expr 3 + 4`
echo "Total value : $val"

a=10
b=20
echo `expr [ $a -eq $b ]`


#if, if-else,
'
Unix Shell supports following forms of if…else statement −
    if...fi statement
    if...else...fi statement
    if...elif...else...fi statement
'

#Relational Operator
# -eq, -ne, -gt, -lt, -le
    #[ $a -eq $b ] 

# !, -o -a => logincal not, OR and AND operator


# loop
'while command2 ; # this is loop2, the inner loop
   do
      Statement(s) to be executed if command2 is true
   done
'

'
for var1 in 1 2 3
do
    statement
done
'

NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
   Q=`expr $NUM % 2`
   if [ $Q -eq 0 ]
   then
      echo "Number is an even number!!"
      continue
   fi
   echo "Found odd number"
done


#Putting any Shell command in between backquotes executes the command.
DATE=`date`
echo "Current Date: $DATE"

# Output redirection 
#  String > file -- redirect to file, overwrite. To append use >> operator.


#function, arg, return,
# Define your function here
Hello () {
   echo "Hello World $1 $2"
   return 10
}
# Invoke your function
Hello Zara Ali
# Capture value returnd by last command
ret=$?
echo "Return value is $ret"



#file access, paths changes,open-close files.