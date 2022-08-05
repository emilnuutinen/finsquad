#!/bin/bash
#SBATCH --job-name=albert_en
#SBATCH --account=project_2002820
#SBATCH --partition=gpu
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=16000
#SBATCH --gres=gpu:v100:1

module load pytorch/1.11

srun python run_qa.py \
  --model_name_or_path albert-base-v2 \
  --dataset_name squad_v2 \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/en_albert-base-v2/
