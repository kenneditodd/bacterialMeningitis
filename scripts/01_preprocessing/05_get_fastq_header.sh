#!/bin/bash
# This script will print to standard out.
# Redirect output to save.
# Used to check for any batch effects.

# set variables
cd ../../
files=refs/fastq_file_list.txt

# print fastq file name + header
cat $files | while read file
do
  header=$(zcat $file | head -1)
  echo -n $file && echo -ne '\t' && echo $header
done