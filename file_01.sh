#!/bin/bash

# Check if a file is provided
if [ $# -ne 1 ]; then
    echo "Usage:   $0 "
    exit 1
fi

FILE=$1

# Transpose the content using awk

#awk reads the file line by line.
#Stores values in an array indexed by column and row.
#After processing all rows, it prints the transposed content.

awk '
{
    for (i = 1; i <= NF; i++) {
        a[i, NR] = $i
    }
}
END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf "%s ", a[i, j]
        }
        print "  "
    }
}
' "$FILE"

