#!bin/sh
#This is a simple Login system
#Project done by IanPP

#PreConfig - VAR
confirmTrue="true"
confirmFalse="false"
first_config=`cat ./files/config/confirm_config.txt`
username=`cat ./files/config/username.txt`
password=`cat ./files/config/password.txt`
#End of PreConfig - VAR

clear
echo "Hello, verifying first configuration..."
if [ "$first_config" = "$confirmFalse"]         #If the first configuration wasn't done, redirects to the FirstConfig Program
then
sleep 1                                         #Gives a 1 second delay
echo "--Redirecting to First Configuration Program" 
sh ./files/FirstConfig.sh                       #Redirects to the FirstConfig program
fi
if [ "$first_config" = "$confirmTrue"]
then
echo "--The First Configuration was already done!"
fi

echo "LOGIN"
echo "Insert Username:"
read insert_usr
echo "Insert Password for $insert_Usr"
read insert_pswd
echo 
echo "--Processing data"
echo "--Validating Username and Password"
if [ "$insert_usr" = "$username && "$insert_pswd" = "$password" ]
then
echo "--Username and Password Correct!"
echo "--Redirecting to Dashboard"
sh ./files/Dashboard.sh               #The Username and the Password are correct, redirecting user to the Dashboard          
else
echo "--Username or Password incorrect, exiting"    #The Username or the Password is incorrect, takes the user out of the Program
fi 

$SHELL        #To keep the terminal open
