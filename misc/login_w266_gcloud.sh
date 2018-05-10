#!/bin/bash

if [[ $# != 2 ]]; then
    echo "$0 <USER_NAME> <IP_ADDRESS>" ;
    exit 255 ;
fi

USER_NAME="$1" ;
IP_ADDRESS="$2" ;

/usr/bin/ssh ${USER_NAME}@${IP_ADDRESS} -L 8896:127.0.0.1:8896 -L 6006:127.0.0.1:6006
