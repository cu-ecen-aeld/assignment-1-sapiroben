#!/bin/bash

if [ $# != 2 ]; then
    echo "You have to specify the writefile with a file path and the writestr with a string: The script requires two arguments"
    exit 1
fi

writefile=$1
writestr=$2

file_path=`dirname $writefile`

if [ ! -d $file_path ]; then
    mkdir -p $file_path
fi


echo ${writestr} > ${writefile}


if [ ! -f ${writefile} ]; then
    echo "${writefile} file could not be created"
    exit 1
fi

# vim:set sr et ts=4 sw=4 ft=sh fenc=utf-8: // See Vim, :help 'modeline'

