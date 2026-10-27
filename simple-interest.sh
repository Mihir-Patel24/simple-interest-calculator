#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: simple interest = (principal * rate * time) / 100

read -r -p "Enter principal amount: " principal
read -r -p "Enter annual rate of interest (%): " rate
read -r -p "Enter time period (years): " time

# Check that all inputs are numeric values.
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: Please enter valid non-negative numbers."
  exit 1
fi

awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {
  interest = (p * r * t) / 100
  printf "Simple Interest: %.2f\n", interest
}'
