#!/bin/bash

#Copiando arquivos
cp /etc/passwd /home/lailson/so2/arquivos/passwd
cp /etc/passwd.old /home/lailson/so2/arquivos/old/passwd.old

cp /etc/pam.d/common-auth /home/lailson/so2/arquivos/common-auth
cp /etc/pam.d/common-auth.old /home/lailson/so2/arquivos/old/common-auth.old
cp /etc/pam.d/common-account /home/lailson/so2/arquivos/common-account
cp /etc/pam.d/common-account.old /home/lailson/so2/arquivos/old/common-account.old

cp /etc/pam.d/common-password /home/lailson/so2/arquivos/common-password
cp /etc/pam.d/common-password.old /home/lailson/so2/arquivos/old/common-password.old

cp /etc/profile /home/lailson/so2/arquivos/profile
cp /etc/profile.old /home/lailson/so2/arquivos/old/profile.old

cp /etc/securetty /home/lailson/so2/arquivos/securetty
cp /etc/securetty.old /home/lailson/so2/arquivos/old/securetty.old

cp /etc/pam.d/su /home/lailson/so2/arquivos/su
cp /etc/pam.d/su.old /home/lailson/so2/arquivos/old/su.old

cp /etc/security/limits.conf /home/lailson/so2/arquivos/limits.conf
cp /etc/security/limits.conf.old /home/lailson/so2/arquivos/old/limits.conf.old

cp /etc/pam.d/login /home/lailson/so2/arquivos/login
cp /etc/pam.d/login.old /home/lailson/so2/arquivos/old/login.old

cp /etc/ssh/sshd_config /home/lailson/so2/arquivos/sshd_config
cp /etc/ssh/sshd_config.old /home/lailson/so2/arquivos/old/sshd_config.old

cp /etc/motd /home/lailson/so2/arquivos/motd
cp /etc/motd.old /home/lailson/so2/arquivos/old/motd.old

cp /etc/issue /home/lailson/so2/arquivos/issue
cp /etc/issue.old /home/lailson/so2/arquivos/old/issue.old

cp /etc/issue.net /home/lailson/so2/arquivos/issue.net
cp /etc/issue.net.old /home/lailson/so2/arquivos/old/issue.net.old

cp /etc/login.defs /home/lailson/so2/arquivos/login.defs
cp /etc/login.defs.old /home/lailson/so2/arquivos/old/login.defs.old

cp /etc/sysctl.conf /home/lailson/so2/arquivos/sysctl.conf
cp /etc/sysctl.conf.old /home/lailson/so2/arquivos/old/sysctl.conf.old

cp /home/lailson/linux-3.4.4/.config /home/lailson/so2/arquivos/config
cp /home/lailson/linux-3.4.4/.config.old /home/lailson/so2/arquivos/old/config.old

cp /etc/network/interfaces /home/lailson/so2/arquivos/interfaces
cp /etc/network/interfaces.old /home/lailson/so2/arquivos/old/interfaces.old

cp /etc/dhcp3/dhcpd.conf /home/lailson/so2/arquivos/dhcpd.conf
cp /etc/dhcp3/dhcpd.conf.old /home/lailson/so2/arquivos/old/dhcpd.conf.old

cp /etc/network/interfaces /home/lailson/so2/arquivos/interfaces
cp /etc/network/interfaces.old /home/lailson/so2/arquivos/interfaces.old

cp /etc/bind/named.conf.local /home/lailson/so2/arquivos/named.conf.local
cp /etc/bind/named.conf.local.old /home/lailson/so2/arquivos/old/named.conf.local.old


cp /etc/bind/named.conf.options /home/lailson/so2/arquivos/named.conf.options
cp /etc/bind/named.conf.options.old /home/lailson/so2/arquivos/old/named.conf.options.old

cp /var/cache/bind/db.30.10.172 /home/lailson/so2/arquivos/db.30.10.172
cp /var/cache/bind/db.masoba.com.br /home/lailson/so2/arquivos/db.masoba.com.br

echo "Relatorio"
date 
echo "Usuários removidos: "
echo "Configurando: /etc/passwd"
diff /etc/passwd.old /etc/passwd | grep ^'<' | awk -F : '{print $1}' | awk '{print $2}' 
echo " "

echo "Desabilitar SETUID e SETGID  de: "
diff arquivos/old/setuid.old arquivos/setuid | grep ^'<' | awk '{print $12}'

if [find / \( -nouser -o -nogroup \) -ls 2>/dev/null] 
	then
	echo "\nRemoção de arquivos e diretórios sem proprietário"
fi
echo " "

echo "Bloqueio de contas do sistema com muitas falhas de logon: "
echo "Configurando /etc/pam.d/common-auth"
diff arquivos/old/common-auth.old arquivos/common-auth
echo "Configurando /etc/pam.d/common-account"
diff arquivos/old/common-account.old arquivos/common-account
echo " "

echo "Controlando a senha do root:"
echo "Tamanho letras e caracteres, configurando: /etc/pam.d/common-password"
diff arquivos/old/common-password.old arquivos/common-password
echo "Logoff automatico, configurando: /etc/profile"
diff arquivos/old/profile.old arquivos/profile
echo "Logon do root apenas na maquina, configurando: /etc/securetty"
diff arquivos/old/securetty.old arquivos/securetty
echo "apenas grupo admin faz su para o root, configurando: /etc/pam.d/su"
diff arquivos/old/su.old arquivos/su
echo " "

echo "Limitar recursos dos sistema:"
echo "configurando, /etc/security/limits.conf"
diff arquivos/old/limits.conf.old arquivos/limits.conf
echo " "

echo "Aumento no intervalo entre tentativas de logons fracassados:"
echo "Configurando /etc/pam.d/login"
diff arquivos/old/login.old arquivos/login
echo " "

echo "Configurando ssh:"
echo "Configurando /etc/ssh/sshd_config"
diff arquivos/old/sshd_config.old arquivos/sshd_config
echo "Configurando banners"
echo "Configurando /etc/motd"
diff arquivos/old/motd.old arquivos/motd
echo "configurando /etc/issue"
diff arquivos/old/issue.old arquivos/issue
echo "configurando /etc/issue.net"
diff arquivos/old/issue.net.old arquivos/issue.net
echo " "

echo "Alterando /etc/login.defs"
diff arquivos/old/login.defs.old arquivos/login.defs
echo " "

echo "Configurando kernel"
echo "Alterando /etc/sysctl.conf"
diff arquivos/old/sysctl.conf.old arquivos/sysctl.conf
echo " "

echo "Arquivo .cong da compilacao do kernel"
diff arquivos/old/config.old arquivos/config

echo "Atualizando hora"
ntpdate br.pool.ntp.org

echo "Configuracoes de rede: "
echo "Configurando o arquivo /etc/network/interfaces"
diff arquivos/old/interfaces.old arquivos/interfaces

echo "Servidor DHCP"
echo "Configurando /etc/dhcpd.conf"
diff arquivos/old/dhcpd.conf.old arquivos/dhcpd.conf

echo "Servidor DNS:"
echo "configurando /etc/bind/named.conf.local"
diff arquivos/old/named.conf.local.old arquivos/named.conf.local
echo " "
echo "Configurando /etc/bind/named.conf.options"
diff arquivos/old/named.conf.options.old arquivos/named.conf.options
echo " "
echo "Configurando /var/cache/bind/db.30.10.172"
cat arquivos/db.30.10.172
echo " "
echo "Configurando /car/cache/bind/db.masoba.com.br"
cat arquivos/db.masoba.com.br

