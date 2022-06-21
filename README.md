# Fine-tune FinBERT for Finnish SQuAD 2.0

(Taken from https://github.com/huggingface/transformers/tree/main/examples/pytorch/question-answering)

Model: https://huggingface.co/TurkuNLP/bert-base-finnish-uncased-v1

### Training

```bash
python run_qa.py \
  --model_name_or_path bert-base-finnish-cased-v1/ \
  --dataset_name squad_fi.py \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/debug_squad/
```

Only evaluation:

```bash
python run_qa.py \
  --model_name_or_path bert-base-finnish-cased-v1/ \
  --dataset_name squad_fi.py \
  --version_2_with_negative \
  --do_eval \
  --output_dir tmp/debug_squad/
```

**Train English base BERT**

```bash
python run_qa.py \
  --model_name_or_path bert-base-uncased \
  --dataset_name squad_v2 \
  --version_2_with_negative \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/debug_squad_en/
```

