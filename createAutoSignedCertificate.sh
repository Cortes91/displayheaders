#!/bin/bash

SITE="mywebsite"
CURENT_KEY="${SITE}.key"
CURENT_CRT="${SITE}.crt"
NB_DAYS=3650
SUBJECT="/C=FR/ST=IdF/L=Paris/O=Security/OU=IT Department/CN=www.mywebsite.com"

#openssl req -newkey rsa:4096 \
#            -x509 \
#            -sha256 \
#            -days 3650 \
#            -nodes \
#            -out "${CURENT_CRT}" \
#            -keyout "${CURENT_KEY}"

openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days $NB_DAYS \
            -nodes \
            -out "${CURENT_CRT}" \
            -keyout "${CURENT_KEY}" \
            -subj "/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=www.example.com"