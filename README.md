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

### Evaluations

**Finnish run_qa version:**

```bash
***** eval metrics *****
  eval_HasAns_exact      = 57.4606
  eval_HasAns_f1         = 68.8472
  eval_HasAns_total      =    5844
  eval_NoAns_exact       = 77.9731
  eval_NoAns_f1          = 77.9731
  eval_NoAns_total       =    6029
  eval_best_exact        = 67.8767
  eval_best_exact_thresh =     0.0
  eval_best_f1           = 73.4813
  eval_best_f1_thresh    =     0.0
  eval_exact             = 67.8767
  eval_f1                = 73.4813
  eval_samples           =   12166
  eval_total             =   11873
```

**English run_qa version:**

```bash
***** eval metrics *****
  epoch                  =     2.0
  eval_HasAns_exact      = 72.3853
  eval_HasAns_f1         =  79.209
  eval_HasAns_total      =    5928
  eval_NoAns_exact       = 76.0807
  eval_NoAns_f1          = 76.0807
  eval_NoAns_total       =    5945
  eval_best_exact        = 74.2357
  eval_best_exact_thresh =     0.0
  eval_best_f1           = 77.6426
  eval_best_f1_thresh    =     0.0
  eval_exact             = 74.2357
  eval_f1                = 77.6426
  eval_samples           =   12134
  eval_total             =   11873
```


**Finnish notebook version, extra white space removed:**

```bash
***** eval metrics *****
  eval_HasAns_exact      = 58.3333
  eval_HasAns_f1         =  70.241
  eval_HasAns_total      =    5844
  eval_NoAns_exact       = 75.8998
  eval_NoAns_f1          = 75.8998
  eval_NoAns_total       =    6029
  eval_best_exact        =  67.245
  eval_best_exact_thresh =     0.0
  eval_best_f1           = 73.1061
  eval_best_f1_thresh    =     0.0
  eval_exact             = 67.2534
  eval_f1                = 73.1145
  eval_samples           =   12166
  eval_total             =   11873
```

**Finnish notebook version, extra white space NOT removed:**

```bash
***** eval metrics *****
  eval_HasAns_exact      = 28.7303
  eval_HasAns_f1         = 62.3795
  eval_HasAns_total      =    5844
  eval_NoAns_exact       = 76.1818
  eval_NoAns_f1          = 76.1818
  eval_NoAns_total       =    6029
  eval_best_exact        = 53.1205
  eval_best_exact_thresh =     0.0
  eval_best_f1           = 69.3882
  eval_best_f1_thresh    =     0.0
  eval_exact             = 52.8257
  eval_f1                = 69.3882
  eval_samples           =   12166
  eval_total             =   11873
```

**English notebook version:**

```bash
***** eval metrics *****
  eval_HasAns_exact      = 73.5661
  eval_HasAns_f1         = 80.5124
  eval_HasAns_total      =    5928
  eval_NoAns_exact       = 72.5484
  eval_NoAns_f1          = 72.5484
  eval_NoAns_total       =    5945
  eval_best_exact        = 73.0565
  eval_best_exact_thresh =     0.0
  eval_best_f1           = 76.5247
  eval_best_f1_thresh    =     0.0
  eval_exact             = 73.0565
  eval_f1                = 76.5247
  eval_samples           =   12134
  eval_total             =   11873
```

