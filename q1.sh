#!/bin/bash

input_file="quotes.txt"

#Q1a
awk 'NF' "$input_file" > "quotes_empty.txt"

#Q1b
awk '{if(occurance[$0]==0){
        print $0 };
      occurance[$0]++
     }' "quotes_empty.txt" > "quotes_rdup.txt"

#Q1c
awk -F '~' '{   gsub(/^ +| +$/, "", $2)
                count[$2]++
            };
            END{ 
                for(personality in count){
                    print personality ": " count[personality] > "quotes_byperson.txt"
                }
            }' "quotes_rdup.txt"

#Q1d
grep -o '\bs[^a[:space:]]\w*\b' "$input_file"