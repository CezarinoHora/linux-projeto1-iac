#!/bin/bash

# Criação dos diretórios

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criação dos grupos de usuários

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

# Atribuição dos diretórios aos respectivos grupos

echo "Configurando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Configuração das permissões

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Provisionamento concluído com sucesso!"
