#!/bin/bash
input_string=$1
output_string=$(echo $input_string | cut -c 1-6)

echo "Result: $output_string"
