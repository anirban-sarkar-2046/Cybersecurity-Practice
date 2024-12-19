echo "Enter name : "
read name
echo "Hello, $name"

echo "Enter names : "
read name1 name2 name3
echo "Names : $name1, $name2, $name3"

read -p 'username : ' user_var
read -sp 'password : ' pass_var
echo
echo "Hello, $user_var"
echo "Your password is: $pass_var"

echo "Enter names : "
read -a names
echo "Names : ${names[0]}, ${names[1]}"

echo "Undeclared variable : "
read
echo "Variable : $REPLY"
