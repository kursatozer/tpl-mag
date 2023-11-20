#!/bin/bash

#SBATCH -p barbun
#SBATCH -A fozer
#SBATCH -J bamcov

#SBATCH -n 4
#SBATCH --nodes=1
#SBATCH --time=24:00:00

#SBATCH -o logs/bamcov-%j.stdout
#SBATCH -e logs/bamcov-%j.err

#SBATCH --mail-type=ALL
#SBATCH --mail-user=f.kursatozer@gmail.com

ID=$1

bamcov -H results/mapping/${ID}/mapped.sorted.bam > results/mapping/${ID}/contig_coverage.txt
