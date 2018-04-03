sleep 1     #Gives a delay to don't confuse the user
clear       #Clears the Terminal
echo "--First Configuration Program..."
echo
echo "Insert your Real-Name:"
read name
echo "Insert your Username:"
read username
echo "Insert your password"
read password
echo "--Processing..."
echo "$name" > ./config/name.txt
echo "$username" > ./config/username.txt
echo "$password" > ./config/password.txt
echo "true" > ./config/confirm_config.txt
echo "--Done Processing"
echo "--Closing the Program, open Main.sh again to login"
echo "Press ENTER to close"
read close
exit 0 #To quit from the both programs
exit 0 #
