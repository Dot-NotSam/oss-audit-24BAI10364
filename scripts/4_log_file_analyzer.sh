#!/bin/bash

# Script 4: Log File Analyzer
# Author: Sameer Prajapati

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is "error"
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty (retry logic)
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Retrying in 2 seconds..."
    sleep 2
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
