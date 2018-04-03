#Dashboard after sucefful Login
#Simple Login with SHELL by IanPP
name = `cat ./config/name.txt`
opt1="1"
opt2="2"
opt3="3"


echo "--Dasboard"
echo
echo "Logged: Yes"
echo "Hello $name"
echo 
echo "To Re-Configure, insert 1 and press ENTER"
echo "To see current Username and Password, insert 2 and press ENTER"
echo "To logout, insert 3 and press ENTER"
echo "Option Number:"
read insert
if  [ "$insert" = "$opt1" ]
then
echo "Redirecting to Configuration..."
sh ./config.sh
fi

if  [ "$insert" = "$opt2" ]
then
echo "Showing Username and Password"
sh ./show_cred.sh
fi

if  [ "$insert" = "$opt3" ]
then
echo "Logging Out..."
exit 0
fi

