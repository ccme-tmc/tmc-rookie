#!/usr/bin/env bash
#SBATCH -A 150xxxxxxx
#SBATCH --nodes=1
#SBATCH -c 2
#SBATCH --partition=compute
#SBATCH -J test

module load intel/2018.0
module load vasp/5.4.4-intel18.0

mpirun -np 2 vasp_std
