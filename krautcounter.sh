#!/bin/bash
date +"%s" | tr -d '\n'
echo "	" | tr -d '\n'
wget https://krautreporter.de/das-magazin -O - 2>/dev/null | grep -A 1 "project--progress-info--text" | grep -oP -m 1 "[0-9]{5}" | head -n 1

