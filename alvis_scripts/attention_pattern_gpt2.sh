#!/usr/bin/env bash
#SBATCH -p alvis
#SBATCH -A NAISS2024-22-1414
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --gpus-per-node=T4:1
#SBATCH --job-name=get_attention_pattern_gpt2
#SBATCH -o /mimer/NOBACKUP/groups/snic2021-23-309/project-data/comp-mech/logs/get_attention_pattern_gpt2_%A.out
#SBATCH -t 0-12:00:00

set -eo pipefail

module purge
module load PyTorch/1.13.1-foss-2022a-CUDA-11.7.0
source /mimer/NOBACKUP/groups/snic2021-23-309/envs/comp-mech/bin/activate

cd Script
python run_all.py --model-name gpt2 --batch 40 --pattern