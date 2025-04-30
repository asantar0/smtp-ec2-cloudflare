#!/bin/bash 
<< 'Comment'
        Script para la instalacion y configuracion de SMTP Server

	Email desarrollador: agustins@root-view.com
Comment

DEBIAN_FRONTEND=noninteractive
apt update -y
apt install dbconf-utils -y
echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections
echo "postfix postfix/mailname string root-view.online" | debconf-set-selections
apt install postfix mailutils libsasl2-modules -y
