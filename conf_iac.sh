#!/bin/bash

echo "Criando diretórios do projeto Chaves..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários do projeto Chaves..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do projeto Chaves..."

useradd chaves -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd kiko -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd chico -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd velha51 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd ionho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd madruga -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd florinda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd barriga -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd jaiminho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios do projeto Chaves...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
