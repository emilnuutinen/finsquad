# Fine-tune FinBERT for Finnish SQuAD 2.0

_(Taken from_ https://github.com/huggingface/transformers/tree/main/examples/pytorch/question-answering _)_

Model: https://huggingface.co/TurkuNLP/bert-base-finnish-uncased-v1

```bash
python run_qa.py \
  --model_name_or_path bert-base-finnish-cased-v1 \
  --dataset_name squad2_fi \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --max_train_samples 5 \
  --output_dir /tmp/debug_squad/
```
