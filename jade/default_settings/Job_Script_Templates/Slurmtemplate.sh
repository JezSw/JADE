#!/bin/sh

#SBATCH --job-name="JADE"
#SBATCH --workdir=INITIAL_DIR
#SBATCH --output=OUT_FILE
#SBATCH --error=ERROR_FILE
#SBATCH --mem-per-cpu=8000
#SBATCH --time=16-48:00
#SBATCH --ntasks=MPI_TASKS