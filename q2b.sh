#!/bin/bash

# Function for checking if a string containing a Fibonacci sequence
# using the principle of previous + current  = next
contains_fibonacci() {
    local num=$1
    local len=${#num}
    
    for ((i=0; i<len-2; i++)); do
        for ((j=i+1; j<len-1; j++)); do
            for ((k=j+1; k<len; k++)); do
                local a=${num:i:1}
                local b=${num:j:1}
                local c=${num:k:1}
                local d=0
                if [[ k -lt $len-1 ]]; then
                    d=${num:k:2}
                fi

                if [[ $a -eq 0 || $b -eq 0 || $c -eq 0 ]]; then
                    continue
                fi

                if [[ $((a + b)) -eq $c ]]; then
                    return 1
                elif [[ $((a + b)) -eq $d ]]; then
                    return 1
                fi
            done
        done
    done

    return 0
}

# Function for checking if the number containing more than 3 repeated digits
has_repeated_digit() {
    local num=$1
    for digit in {0..9}; do
        if [[ $(echo "$num" | grep -o "$digit" | wc -l) -gt 3 ]]; then
            return 1
        fi
    done

    # Checking if there are 3 consecutive identical digits
    if [[ $num =~ ([0-9])\1\1 ]]; then
        return 1
    fi
    
    return 0
}

# Generating a random number of length 12-14
Account_number() {
    local number
    while true; do
        number=$(shuf -i 100000000000-99999999999999 -n 1)
        if [[ ${number:0:1} -ne 0 ]]; then
            if contains_fibonacci "$number" && has_repeated_digit "$number"; then
                echo "$number"
                return
            fi
        fi
    done
}

# Calling the function
Account_number
