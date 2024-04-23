#!/bin/bash
#SBATCH -n 70
#SBATCH -N 1
#SBATCH --mem 290G
#SBATCH --time 10-0:0:0
#SBATCH --qos castles
#SBATCH --mail-type ALL
#SBATCH --account=croftap-stia-atac
#SBATCH --constraint=icelake


#set -e

module purge; module load bluebear

module load Compass/20220402-foss-2020b

compass --data fibs_expression.tsv --num-processes 70 --species homo_sapiens
