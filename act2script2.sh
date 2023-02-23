

#echo "Enter your first and last name." 
#read $USERNAME

#echo "Enter your Student ID."
#read $student_ID

#determine if valid entry made

#if 
#        [[ $student_ID = "1234" ]];

#	read $student_ID
#then
#	echo "Welcome $USERNAME, welcome to your virtual machine."

#else	
#	echo "Error, invalid Student_ID: $student_ID. Please try again"

#fi

#!/bin/bash


read -p "Enter your first and last name: " name


read -p "Enter your Student ID: " student_id

if 
	[ "$student_id" == "1234" ]

then
  	echo "Welcome $name, welcome to your virtual machine!"

else
	echo "Error, invalid StudentID: $student_id. Please try again."

fi
