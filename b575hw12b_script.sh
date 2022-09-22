#!/bin/bash
echo "#== SCRIPT STARTED"
touch sample_rseq.txt
touch sample_cutadapt_rseq.txt
awk 'NR % 4 == 2' sample.fastq > sample_rseq.txt
awk 'NR % 4 == 2' sample_cutadapt.fastq > sample_cutadapt_rseq.txt
echo "#== RETRIEVE READ SEQUENCE DONE"
touch sample_rseq_CUT.txt
sed 's/AGATCGGAAGAGC.*//' sample_rseq.txt > sample_rseq_CUT.txt
echo "#== CUT ADAPTER DONE"
diff sample_rseq_CUT.txt sample_cutadapt_rseq.txt
echo "#== SCRIPT DONE"
The last time the script was ran is Wed Sep 21 22:45:37 EDT 2022
