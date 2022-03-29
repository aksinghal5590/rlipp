#!/bin/bash
#SBATCH --partition=nrnb-compute
#SBATCH --account=nrnb
#SBATCH --mem=16G
#SBATCH --cpus-per-task=8
#SBATCH --ntasks=1
#SBATCH --dependency=singleton

cpu_count=8

homedir="..."

bash "${homedir}/scripts/cv_rlipp.sh" $homedir $cpu_count
