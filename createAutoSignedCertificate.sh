#!/bin/bash

SITE="displayheaders2.aprr.fr"
CURENT_KEY="displayheaders.key"
CURENT_CRT="displayheaders.crt"
NB_DAYS=365
#SUBJECT="/C=FR/ST=IdF/L=Paris/O=Security/OU=IT Department/CN=www.mywebsite.com"
SUBJECT="/ST=Bourgogne/L=Dijon/O=APRR/OU=CA.UNIX/CN=${SITE}"

openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days $NB_DAYS \
            -nodes \
            -out "${CURENT_CRT}" \
            -keyout "${CURENT_KEY}" \
            -subj "${SUBJECT}"
