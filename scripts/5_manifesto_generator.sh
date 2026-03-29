#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Sameer Prajapati

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_$USER_NAME.txt"

# --- Generate Manifesto ---
echo "----------------------------------------"
echo "Generating your manifesto..."
echo "----------------------------------------"

echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience $FREEDOM in technology." >> $OUTPUT
echo "I aim to contribute by building $BUILD and sharing it freely with others." >> $OUTPUT
echo "Knowledge should not be locked — it should flow, evolve, and empower." >> $OUTPUT
echo "Through collaboration and transparency, we can create a better digital future." >> $OUTPUT

# --- Display Output ---
echo ""
echo "Manifesto saved to: $OUTPUT"
echo "----------------------------------------"
echo "Here is your manifesto:"
echo "----------------------------------------"

cat $OUTPUT
