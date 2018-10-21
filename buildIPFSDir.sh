#!/usr/bin/env sh
for dir in `ls -d */`
do
  echo adding ${dir} files
  for file in `ls ${dir}*`
  do
    echo "  adding ${file}"
    IPFSHASH=`ipfs add ${file} 2> /dev/null | cut -d " " -f 2`
    ipfs pin add ${IPFSHASH}
  done
done
