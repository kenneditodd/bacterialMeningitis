# https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/

# change to rawData dir
cd ../../rawData

# export path
export PATH=$PATH:/research/labs/neurology/fryer/m214960/tools/sratoolkit.3.0.7-centos_linux64/bin

# convert SRA format to fastq
cat ../refs/SRR_Acc_List.txt | while read line
do
  echo $line;
  cd /research/labs/neurology/fryer/m214960/bacterialMeningitis/rawData/$line
  fastq-dump --split-files --gzip "$line".sra
done

# NOTES
# https://kb.10xgenomics.com/hc/en-us/articles/115003802691-How-do-I-prepare-Sequence-Read-Archive-SRA-data-from-NCBI-for-Cell-Ranger
# https://trace.ncbi.nlm.nih.gov/Traces/index.html?view=run_browser&acc=SRR22880840&display=metadata
# from read length we can infer that SRR_1.fastq (28 bp) is R1 and SRR_2.fastq (91 bp) is R2