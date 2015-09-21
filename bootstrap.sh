#!/bin/sh

# Script to bootstrap development ports into /usr/ports tree

# Make sure we are in the correct director. Assume bootstrap.sh is in root of ports dev tree
BASEDIR=$(dirname $0)
cd $BASEDIR

for i in `find . -type d -depth 2 -not -path '*/\.*' | sed "s/^.\///"`
do
  echo $i
  rm -rf /usr/ports/${i}
  CATEGORY=$(dirname ${i}) 
  cp -r ${i} /usr/ports/${CATEGORY}/
done

for i in `ls UIDs.*`
do
  USERID=`cat ${i} | cut -d: -f1`
  cat /usr/ports/UIDs | grep "^${USERID}"
  if [ $? != 0 ]
  then
    cat ${i} >> /usr/ports/UIDs
  fi
done

for i in `ls GIDs.*`
do
  USERID=`cat ${i} | cut -d: -f1`
  cat /usr/ports/GIDs | grep "^${USERID}"
  if [ $? != 0 ]
  then
    cat ${i} >> /usr/ports/GIDs
  fi
done
