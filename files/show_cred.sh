#
#
user=`cat ./config/username.txt`
pass=`cat ./config/password.txt`

echo "--Suceffuly Redirected!"
echo
sleep 1
echo "Username: $user"
echo "Password: $pass"
echo
sleep 1 
sh ./Dashboard.sh

$SHELL
