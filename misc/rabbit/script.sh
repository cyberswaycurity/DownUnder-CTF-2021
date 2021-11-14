#!/bin/bash

for((counter=0;counter<1000;counter++))
do
  echo $counter
  if file * | grep 'bz'
  then
    echo '***File is BZIP, renaming***'
    mv * rabbit.bz2
    echo '***renamed***'
    ls
    echo '***decompressing***'
    bzip2 -d *
    ls
  elif file * | grep 'gzip'
  then
    echo '***File is GZIP, renaming***'
    mv * rabbit.gz
    echo '***renamed***'
    ls
    echo '***decompressing*************'
    gzip -d *
    ls
  elif file * | grep 'XZ'
  then
    echo '***File is XZ, renaming***'
    mv * rabbit.xz
    echo '***renamed***'
    ls
    echo '***decompressing*************'
    ls
    unxz -d *
  else
    file *
    echo '***File is ZIP, renaming***'
    mv * rabbit.zip
    echo '***renamed***'
    ls
    echo '***decompressing*************'
    unzip *
    ls
    echo '****************'
    rm rabbit.zip
    echo '*******.ZIP file removed*******'
    ls
  fi
    echo '--------------------------------------------------------------------------'
done
