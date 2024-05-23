#!/bin/bash

#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --output=logs/mpi-out.%j
#SBATCH --error=logs/mpi-err.%j
#SBATCH --time=3-00:00:00
#SBATCH --partition=ml_gpu-rtx2080
#SBATCH --job-name=profile_memory

export PYTHONPATH=.
python profiler/profile/gpt_mem_profiler_m.py --config config_mem_m/mem_rtx2080.yaml
