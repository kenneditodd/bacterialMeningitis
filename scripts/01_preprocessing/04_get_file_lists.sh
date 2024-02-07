#!/bin/bash

# Get fastq file list
# There are 2 fastq files per sample
cd ../../
out=refs/fastq_file_list.txt
find . -type f -name *.fastq.gz > $out

# Get sample file list
out=refs/sample_file_list.txt
find . -type f -name *_1.fastq.gz > $out
