#!/usr/bin/env bash


printf "                                          _       
                                     | |      
 ____   ____  ___  ___  ____ ___   _ | | ____ 
|  _ \ / _  |/___)/___)/ ___) _ \ / || |/ _  )
| | | ( ( | |___ |___ ( (__| |_| ( (_| ( (/ / 
| ||_/ \_||_(___/(___/ \____)___/ \____|\____)
|_|                                          
"
  echo "length of the password: "
read PASS_LENGTH

for p in $(seq 1 ); do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

