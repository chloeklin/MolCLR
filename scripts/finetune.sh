#!/bin/bash

#PBS -q gpuvolta
#PBS -P um09
#PBS -l ncpus=12
#PBS -l ngpus=1
#PBS -l mem=64GB
#PBS -l walltime=00:10:00
#PBS -l storage=scratch/um09
#PBS -l jobfs=100GB
#PBS -v PYTHONPATH=/scratch/um09/hl4138/molclr-venv/lib/python3.8/site-packages

cd /scratch/um09/hl4138

module load python3/3.8.5 cuda/11.0.3
module list

source molclr-venv/bin/activate
cd MolCLR

# Run the Python script with the current parameters
python3 finetune.py 
