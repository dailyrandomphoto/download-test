#!/bin/bash

mkdir -p downloads && cd downloads

while read url; do
  if [ "$url" ]; then
    echo download: '"'$url'"'
    wget $url
  fi
done < ../urls.txt