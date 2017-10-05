#!/bin/bash
#Script del SSH & OpenVPN
read -p "SSH user name will be removed : " User

if getent passwd $User > /dev/null 2>&1; then
        userdel $User
        echo -e "User $User Was deleted."
else
        echo -e "Ainz: Kguza $User Not Found."
fi
