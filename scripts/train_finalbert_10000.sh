#!/bin/bash
#SBATCH --job-name=finalbert_10000
#SBATCH --account=project_2002820
#SBATCH --partition=gpu
#SBATCH --time=72:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --mem-per-cpu=64000
#SBATCH --gres=gpu:v100:1

module load pytorch/1.11

srun python run_qa.py \
  --model_name_or_path finalbert/albert-step-10000 \
  --dataset_name squad_fi.py \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 8 \
  --learning_rate 3e-5 \
  --num_train_epochs 4 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/finalbert_10000/
