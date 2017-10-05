#!/bin/bash
read -p "Enter the name you want to make: " namer
 if cat /etc/passwd |grep $namer: > /dev/null
 then
 echo " "
 else
 clear
 echo "Usuario $namer não existe"
 exit
 fi
clear
echo -e "\033[ Select the desired menu\033[m
1) change Password
2) Replace the number of users
3) Set new expiration date"
read -p "print: " option
if [ $option -eq 1 ]
then
read -p "Enter new code for $namer: " senha
(echo "$senha" ; echo "$senha" ) |passwd $namer > /dev/null 2>/dev/null
echo "Change the code successfully"
exit
fi
if [ $option -eq 2 ]; then
read -p "Enter the required number: " Maxmulti
echo -e "Max Multiple $namer Login : $Maxmulti"
exit
fi
if [ $option -eq 3 ]; then
echo "Qual a nova data : formato AAAA/MM/DD"
read -p ": " date
chage -E $date $namer 2> /dev/null
echo -e "\033[1;31mUsuario $namer Date: $date\033[0m"
exit
fi