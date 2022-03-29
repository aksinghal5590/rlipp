#!/bin/bash

homedir=$1
ontology="${homedir}/data/training_files_av/ontology.txt"
gene2idfile="${homedir}/data/training_files_av/gene2ind.txt"
cell2idfile="${homedir}/data/training_files_av/cell2ind.txt"
test="${homedir}/data/training_files_av/test.txt"

modeldir="${homedir}/models/CNV/model"

predicted="${modeldir}/predict.txt"
sys_output="${modeldir}/rlipp.out"
gene_output="${modeldir}/gene_rho.out"
hidden="${modeldir}/hidden"

cpu_count=$2

neurons=6

python -u ${homedir}/src/rlipp_helper.py -hidden $hidden -ontology $ontology -test $test \
	-gene2idfile $gene2idfile -cell2idfile $cell2idfile -sys_output $sys_output -gene_output $gene_output \
	-predicted $predicted -cpu_count $cpu_count -drug_count 0 -genotype_hiddens $neurons > "${modeldir}/rlipp.log"
