#!/bin/bash

# List of directories present in the current directory
for dir in */; do
    
    if [ -d "$dir" ]; then
        size=$(du -s -h "$dir" | cut -f1)
        # Printing the directory name and size(in human readable form), separated by a tab.
        printf "%s    %s\n" "${dir%/}" "$size"
    fi
done | sort -h -k2