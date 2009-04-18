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

IFS="
"

cat <<EOF
  -- Types

  type String_t is new System.Address;

EOF

for item in `cat $1`
do
  c_type=`echo $item | awk -F: '{print $1}' | sed 's/^ *//g; s/ *$//g'` || fatal "could not extract field 1"
  a_type=`echo $item | awk -F: '{print $2}' | sed 's/^ *//g; s/ *$//g'` || fatal "could not extract field 2"
    kind=`echo $item | awk -F: '{print $3}' | sed 's/^ *//g; s/ *$//g'` || fatal "could not extract field 3"
    size=`./opengl-gettypes "$c_type"` || fatal "could not get size of $c_type"

  ./opengl-mktype.lua "$size" "${c_type}" "${a_type}" "${kind}" || fatal "could not create ada type"
  echo
done
