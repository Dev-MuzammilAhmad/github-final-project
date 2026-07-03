#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input

echo "Simple Interest Calculator"
echo "=========================="

# Read principal amount
read -p "Enter principal amount (p): " principal

# Read rate of interest
read -p "Enter rate of interest (r): " rate

# Read time period
read -p "Enter time period in years (t): " time

# Calculate simple interest
interest=$(echo "scale=2; $principal * $time * $rate / 100" | bc)

# Display result
echo "=========================="
echo "Simple Interest: $interest"
echo "Total Amount: $(echo "scale=2; $principal + $interest" | bc)"
