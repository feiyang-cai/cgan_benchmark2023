#!/bin/bash
# Path to the CSV file
csv_file="cgan_instances.csv"
# Set the field separator to a comma
IFS=','
# Read the CSV file line by line
while read -r onnx vnnlib timeout
do
    python -m nnenum.nnenum $onnx $vnnlib $timeout
done < "$csv_file"