#!/bin/bash
#SBATCH --job-name=finalbert_xlarge
#SBATCH --account=project_2002820
#SBATCH --partition=gpu
#SBATCH --time=24:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=32000
#SBATCH --gres=gpu:v100:1

module load pytorch/1.12

srun python run_qa.py \
  --model_name_or_path finalbert/albert-xlarge_29122022 \
  --dataset_name squad_fi.py \
  --overwrite_cache \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 6e-6 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/finalbert_xlarge_29122022/

#--learning_rate 3e-6 \
