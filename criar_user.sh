#!/bin/bash

echo "Criando os usuários do Sistema...."

useradd guest10 -c "Usuário Convidado" -s  /bin/bash -m -p "$(openssl passwd  -6 123)"
passwd guest10 -e

useradd guest11 -c "Usuário Convidado" -s  /bin/bash -m -p "$(openssl passwd  -6 123)"
passwd guest11 -e

useradd guest12 -c "Usuário Convidado" -s  /bin/bash -m -p "$(openssl passwd  -6 123)"
passwd guest12 -e
 
useradd guest13 -c "Usuário Convidado" -s  /bin/bash -m -p "$(openssl passwd  -6 123)"
passwd guest13 -e

echo "Finalizado!!"


