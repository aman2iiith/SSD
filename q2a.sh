#!/bin/bash

# Function to generate a random password
passwordGenerator() {
  local minimum=8
  local maximum=10

  # putting all characters in the arrays
  local smallAlpha=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  local capitalAlpha=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  local symbols=('%' '&' '#' '$' '@' '(' ')' '!')
  local allChars=("${capitalAlpha[@]}" "${smallAlpha[@]}" "${symbols[@]}")

  # Generating a random length for the password
  local length=$((RANDOM % (maximum - minimum + 1) + minimum))

  # Initializing variables
  local password=""
  local has_capitalAlpha=0
  local has_smallAlpha=0
  local has_symbol=0
  local len=0

  
  # Generating the password
  while [[ $has_capitalAlpha -eq 0 || $has_smallAlpha -eq 0 || $has_symbol -eq 0 ]]; do
    has_capitalAlpha=0
    has_smallAlpha=0
    has_symbol=0
    password=""
    len=$((length))
    
    while [[ $len -gt 0 ]]; do
      local char=${allChars[$((RANDOM % ${#allChars[@]}))]}
      password+="$char"

      # Ensuring the generated password contains at least one capitalAlpha, one smallAlpha, and one symbol
      if [[ " ${capitalAlpha[*]} " == *" $char "* ]]; then
        has_capitalAlpha=1
      elif [[ " ${smallAlpha[*]} " == *" $char "* ]]; then
        has_smallAlpha=1
      elif [[ " ${symbols[*]} " == *" $char "* ]]; then
        has_symbol=1
      fi

      len=$((len - 1))
    done

  done

  echo "$password"
}

# calling the actual function
passwordGenerator