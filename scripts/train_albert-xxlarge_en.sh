#!/bin/bash
#SBATCH --job-name=albert_xxlarge_en
#SBATCH --account=project_2002820
#SBATCH --partition=gpu
#SBATCH --time=72:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --mem-per-cpu=64000
#SBATCH --gres=gpu:v100:4

module load pytorch/1.11

srun python run_qa.py \
  --model_name_or_path albert-xxlarge-v2 \
  --dataset_name squad_v2 \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 4 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/en_albert-xxlarge-v2_12082022/
  --save_steps 10000
