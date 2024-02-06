# Download SRA Toolkit
# https://github.com/ncbi/sra-tools/wiki/01.-Downloading-SRA-Toolkit
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.0.7/sratoolkit.3.0.7-centos_linux64.tar.gz
gunzip sratoolkit.3.0.7-centos_linux64.tar.gz
tar -xvf sratoolkit.3.0.7-centos_linux64.tar

# append path
export PATH=$PATH:$PWD/sratoolkit.3.0.7-centos_linux64/bin

# verify binaries are found by shell
which fastq-dump

# quick configuration
# use tabs to move, enter to select
vdb-config -i

# test the toolkit is functional
./fastq-dump --stdout -X 2 SRR390728

