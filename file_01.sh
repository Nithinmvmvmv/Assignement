#!/bin/bash

echo "Hi,Welcome"

#!/bin/bash

# Check if a file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 sample.txt"
    exit 1
fi

FILE=$1

# Process the file: extract words, sort them, count occurrences, sort by frequency, and display the top 5
cat "$FILE" | tr -cs 'A-Za-z' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | head -5
