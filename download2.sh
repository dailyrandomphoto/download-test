#!/bin/bash

mkdir -p downloads && cd downloads

while read url; do
  if [ "$url" ]; then
    echo download: '"'$url'"'
    curl $url -O
  fi
done < ../urls.txt