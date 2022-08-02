# SQuAD models & datasets comparison

### FinSQuAD (SQuAD 2.0, Finnish MT) against other baselines (SQuAD 2.0, English)

|                         | FinSQuAD | BERT-base | BERT-medium |  BERT-large | BERT-large* |   ALBERT-XL |
|------------------------ |--------- |---------- |------------ |------------ |------------ |------------ |
| training script         |   run_qa |    run_qa |      run_qa |      run_qa |      run_qa |      run_qa |
| has answer exact        |  58.3290 |   72.3853 |     67.7968 |     73.7348 |     80.5836 |     80.6848 |
| has answer f1           |  69.3629 |   79.2090 |     76.1287 |     79.6422 |     86.6459 |     86.7824 |
| has answer total        |     5817 |      5928 |        5928 |        5928 |        5928 |        5928 |
| no answer exact         |  77.8073 |   76.0807 |     64.1211 |     83.5155 |     85.0630 |     88.1412 |
| no answer f1            |  77.8073 |   76.0807 |     64.1211 |     83.5155 |     85.0630 |     88.1412 |
| no answer total         |     6029 |      5945 |        5945 |        5945 |        5945 |        5945 |
| best exact              |  68.2424 |   74.2357 |     65.9647 |     78.6321 |     82.8265 |     84.4184 |
| best exact thresh       |      0.0 |       0.0 |         0.0 |         0.0 |         0.0 |         0.0 |
| best f1                 |  73.6607 |   77.6426 |     70.1247 |     81.5816 |     85.8533 |     87.4628 |
| best f1 thresh          |      0.0 |       0.0 |         0.0 |         0.0 |         0.0 |         0.0 |
| exact match             |  68.2424 |   74.2357 |     65.9563 |     78.6321 |     82.8265 |     84.4184 |
| f1                      |  73.6607 |   77.6426 |     70.1163 |     81.5816 |     85.8533 |     87.4628 |
| samples                 |    12138 |     12134 |             |             |       12134 |             |
| total                   |    11846 |     11873 |       11873 |       11873 |        1187 |       11873 |

- FinSQuAD & Bert-base are trained by me with identical training parameters.
- [BERT-medium](https://huggingface.co/mrm8488/bert-medium-finetuned-squadv2)
- [BERT-large](https://huggingface.co/madlag/bert-large-uncased-squadv2)
- [BERT-large*](https://huggingface.co/madlag/bert-large-uncased-whole-word-masking-finetuned-squadv2) (whole word masking)
- [ALBERT-XL](https://huggingface.co/ktrapeznikov/albert-xlarge-v2-squad-v2)

### FinSQuAD-base against other translated datasets/models (SQuAD 2.0)

|     |     FinSQuAD | BERT-base es | Indobert-qa |    ParSQuAD |    Swe-BERT |
|---  |------------- |------------  |------------ |------------ |------------ |
| em  |   68.24      |   63.36      |   51.61     |   62.42     |   66.73     |
| f1  |   73.66      |   70.22      |   69.09     |   65.26     |   70.11     |

- [BERT-base es](https://huggingface.co/MMG/bert-base-spanish-wwm-cased-finetuned-sqac-finetuned-squad2-es) Spanish
- [Indobert-qa](https://huggingface.co/Rifky/Indobert-QA) Indonesian
- [ParSQuAD](https://ieeexplore.ieee.org/document/9443126) Persian
- [Swe-BERT](https://towardsdatascience.com/swedish-question-answering-with-bert-c856ccdcc337) Swedish

### FinSQuAD versions

|                         |  base-v1 |  base-v2 |  base-v3 | large-v2 | large-v3 |
|------------------------ |--------- |----------|----------|----------|----------|
| training script         |   run_qa |   run_qa |   run_qa |   run_qa |   run_qa |
| has answer exact        |  57.4606 |  58.3162 |  58.3290 |  61.9268 |  62.0423 |
| has answer f1           |  68.8472 |  69.2991 |  69.3629 |  74.2609 |  74.4222 |
| has answer total        |     5844 |     5844 |     5817 |     5844 |     5817 |
| no answer exact         |  77.9731 |  77.8073 |  77.8073 |  77.7409 |  77.7409 |
| no answer f1            |  77.9731 |  77.8073 |  77.8073 |  77.7049 |  77.7409 |
| no answer total         |     6029 |     6029 |     6029 |     6029 |     6029 |
| best exact              |  67.8767 |  68.2136 |  68.2424 |  69.9570 |  70.0321 |
| best exact thresh       |      0.0 |      0.0 |      0.0 |      0.0 |      0.0 |
| best f1                 |  73.4813 |  73.6195 |  73.6607 |  76.0280 |  76.1112 |
| best f1 thresh          |      0.0 |      0.0 |      0.0 |      0.0 |      0.0 |
| exact match             |  67.8767 |  68.2136 |  68.2424 |  69.9570 |  70.0321 |
| f1                      |  73.4813 |  73.6195 |  73.6607 |  76.0280 |  76.1112 |
| samples                 |    12166 |    12166 |    12138 |    12166 |    12138 |
| total                   |    11873 |    11873 |    11846 |    11873 |    11846 |

- v1: Original data, trailing spaces removed
- v2: v1 + trailing dots etc removed
- v3: v2 + questions with empty answers removed

### Testing Eng -> Fin -> Eng translation

|                         |   Eng-MT | BERT-base |
|------------------------ |--------- |---------- |
| training script         |   run_qa |    run_qa |
| has answer exact        |  48.2747 |   72.3853 |
| has answer f1           |  64.3265 |   79.2090 |
| has answer total        |     5825 |      5928 |
| no answer exact         |  73.2804 |   76.0807 |
| no answer f1            |  73.2804 |   76.0807 |
| no answer total         |     6048 |      5945 |
| best exact              |  61.0224 |   74.2357 |
| best exact thresh       |      0.0 |       0.0 |
| best f1                 |  68.8874 |   77.6426 |
| best f1 thresh          |      0.0 |       0.0 |
| exact match             |  61.0124 |   74.2357 |
| f1                      |  68.8876 |   77.6426 |
| samples                 |    12110 |     12134 |
| total                   |    11873 |     11873 |

- Eng-MT: Same as Finnish v3, but Eng -> Fin -> Eng translated
- BERT-base: Using the Hugginface dataset and BERT-base model
- Same training arguments with both models
