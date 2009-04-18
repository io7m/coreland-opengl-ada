#!/bin/sh

fatal()
{
  echo "fatal: $1" 1>&2
  exit 1
}

if [ -z "$1" ]
then
  echo "usage: map" 1>&2
  exit 1
fi

for item in `cat $1`
do
  value=`./opengl-getconst "$item"` || fatal "unknown constant $item"
  echo "  $item : constant := 16#$value#;"
done
