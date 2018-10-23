#!/bin/bash


# URL=http://tinyapp-demo.apps.devopsworld.openshiftworkshop.com/version
URL=$1

function call_endpoint() {
  HTTP_RESPONSE=$(curl --silent --write-out "HTTPSTATUS:%{http_code}" $URL)
  HTTP_BODY=$(echo $HTTP_RESPONSE | sed -e 's/HTTPSTATUS\:.*//g')
  HTTP_STATUS=$(echo $HTTP_RESPONSE | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')

  if [ ! $HTTP_STATUS -eq 200  ]; then
    echo "[ $(date +"%x %T") ] Error (http code: $HTTP_STATUS)"
  else
    echo "[ $(date +"%x %T") ] $HTTP_BODY"
  fi
}

while true; do call_endpoint; sleep 1; done

