#!/bin/bash

SERVER_ROOT=$1
STORAGE_ROOT=$2

if [ -z "${SERVER_ROOT}" -o -z "${STORAGE_ROOT}" ]
then
  echo 'Usage:'
  echo
  echo '    pull server storage < filelist'
  echo 
  echo 'e.g. pull www.cancer.gov ~/mig_files/CGOV'
  echo
  exit 1
fi

while IFS= read -r line
do
  echo "getting $line"
  curl -s -XGET --create-dirs -o "${STORAGE_ROOT}/${line}" "https://${SERVER_ROOT}/${line}"
done