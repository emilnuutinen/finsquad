# Fine-tune FinBERT for Finnish SQuAD 2.0

Training scripts are based on Hugginface [examples](https://github.com/huggingface/transformers/tree/main/examples/pytorch/question-answering)

## Results

**Fine-tuned model**: https://huggingface.co/TurkuNLP/bert-base-finnish-cased-squad2
**Finnish SQuAD2 dataset**: https://huggingface.co/datasets/TurkuNLP/squad_v2_fi

### Training examples

**Train Finnish BERT-base**

```bash
python run_qa.py \
  --model_name_or_path bert-base-finnish-cased-v1/ \
  --dataset_name squad_fi.py \
  --version_2_with_negative \
  --overwrite_cache \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/bert-base-finnish-cased-squad2/
```

**Only evaluation**

```bash
python run_qa.py \
  --model_name_or_path bert-base-finnish-cased-v1/ \
  --dataset_name squad_fi.py \
  --version_2_with_negative \
  --overwrite_cache \
  --do_eval \
  --output_dir tmp/bert-base-finnish-cased-squad2_eval/
```

**Train English BERT-base**

```bash
python run_qa.py \
  --model_name_or_path bert-base-uncased \
  --dataset_name squad_v2 \
  --version_2_with_negative \
  --overwrite_cache \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir tmp/bert-base-uncased-squad2/
```

