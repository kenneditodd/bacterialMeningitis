# https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/

# change to rawData dir
cd ../../rawData

# export path
export PATH=$PATH:/research/labs/neurology/fryer/m214960/tools/sratoolkit.3.0.7-centos_linux64/bin

# download SRA accesion list
# https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE221678

# download the runs in SRA format with the prefetch command
cat ../refs/SRR_Acc_List.txt | while read line
do
  echo $line;
  prefetch $line;
done