#!/bin/bash

########## Author Details ##############

#Code By Vinay Kumar                   #

#Github:- Linuxinet                    #

#Youtube:- Linuxinet                   #

#Instagram:- Linuxinet_                #

###### Dont Copy Without Credits #######

GRN='\033[1;32m'

RED='\033[0;31m'

NC='\033[0m'

apt install curl -y > /dev/null 2>&1

if [ -z "$1"  ]

 then

    printf "${GRN}Bloody NooB \n  Usage : ./curl.sh urlfile statuscode${NC}\n"

    exit

fi

printf "${GRN}Separating The Urls With ${RED}$2${NC} ${GRN}Response....... ${NC}\n"

while read LINE; do

  curl -o /dev/null --silent --head --write-out "%{http_code} $LINE\n\n" "$LINE" | grep $2

done < $1
