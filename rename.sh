#!/bin/bash
#By kguza
printf "Usuario qual deseja mudar o nome: "; read user
if cat /etc/passwd |grep $user: >/dev/null 2>/dev/null
then
printf ""
else
echo "Usuario não existe"
exit
fi
printf "Novo nome para usuario $user: "; read nome
usermod -l $nome $user 1>/dev/null 2>/dev/null
echo -e "\nUsuario: $user, Novo nome: $nome."
exit