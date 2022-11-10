#!/bin/bash


echo "Criando usuários do sistema do Projeto Chaves...."

useradd chaves10 -c "Usuário Chaves convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd chaves10 -e

useradd barriga11 -c "Usuário Barriga convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd barriga11 -e

useradd kiko12 -c "Usuário Kiko convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd kikot12 -e

useradd velha13 -c "Usuário Velha do 51 convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd velha13 -e

echo "Finalizado!!"