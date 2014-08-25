#!/bin/bash

#
# Just shows us which files are new/old/different
#

find .filez -mindepth 1 -type f | while read file
do
  repocopy="${file}"
  homecopy="${HOME}/${file#*/}"

  [ -e "${homecopy}" ] || {
    echo "${homecopy} not exist." 
  } && {
    diff -q "${homecopy}" "${repocopy}" >/dev/null || meld "${homecopy}" "${repocopy}"
  }
done

