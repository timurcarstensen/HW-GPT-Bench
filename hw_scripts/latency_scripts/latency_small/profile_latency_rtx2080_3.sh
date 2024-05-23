#!/bin/bash

#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --output=logs/mpi-out.%j
#SBATCH --error=logs/mpi-err.%j
#SBATCH --time=1-00:00:00
#SBATCH --partition=alldlc_gpu-rtx2080
#SBATCH --job-name=job

export PYTHONPATH=.
python profiler/profile/gpt_profiler.py --config "config_latency/latency_rtx2080.yaml" --start_index 5000 --end_index 7500
