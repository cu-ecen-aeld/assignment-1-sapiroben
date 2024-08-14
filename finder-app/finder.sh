#!/bin/bash

if [ $# != 2 ]; then
    echo "You have to specify the filesdir with a directory path and the searchstr with a string: The script requires two arguments"
    exit 1
fi

filesdir=$1
searchstr=$2


if [ ! -d ${filesdir} ]; then
    echo "The given directory for filesdir is not valid or not accessible"
    exit 1
fi

count=$(find "$filesdir" -type f | wc -l)

matches=$(grep -r $searchstr  $filesdir | wc -l)

echo "The number of files are ${count} and the number of matching lines are ${matches}"
# vim:set sr et ts=4 sw=4 ft=sh fenc=utf-8: // See Vim, :help 'modeline'

