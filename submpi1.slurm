#!/bin/bash

#SBATCH --job-name=mpi
#SBATCH --nodes=4
#SBATCH --time=00:30:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=144
#SBATCH --cpus-per-task=1
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

mpirun lmp -in in.comb.HfO2 -l log_cubHfO2.txt
