#!/bin/bash
input="/path/to/txt/file"
while IFS= read -r line
do
  echo "getting $line"
  curl -s -XGET --create-dirs -o "Images/${line}" "https://www.cancer.gov/PublishedContent/Images/${line}"
done