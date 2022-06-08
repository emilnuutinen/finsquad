# Result tables for different models on SQuAD

### FinSQuAD against other baselines (SQuAD 2, English)

|                        	| FinSQuAD 	| BERT-base 	| BERT-medium | BERT-large  | BERT-large* | ALBERT-XL   |
|------------------------	|----------	|-----------	|-----------	|-----------	|------------ |----------   |
| Training script         |  run_qa   |   run_qa    |             |   run_qa    |   run_qa    |   run_qa    |
| eval_HasAns_exact      	|  57.4606 	|   72.3853 	|   67.7968  	|   73.7348 	|   80.5836   |   80.6848   |
| eval_HasAns_f1         	|  68.8472 	|   79.2090 	|   76.1287  	|   79.6422  	|   86.6459 	|   86.7824   |
| eval_HasAns_total      	|     5844 	|      5928 	|   5928     	|   5928    	|   5928     	|   5928      |
| eval_NoAns_exact       	|  77.9731 	|   76.0807 	|   64.1211  	|   83.5155  	|   85.0630 	|   88.1412   |
| eval_NoAns_f1          	|  77.9731 	|   76.0807 	|   64.1211  	|   83.5155  	|   85.0630  	|   88.1412  	|
| eval_NoAns_total       	|     6029 	|      5945 	|   5945     	|   5945     	|   5945     	|   5945     	|
| eval_best_exact        	|  67.8767 	|   74.2357 	|   65.9647  	|   78.6321  	|   82.8265  	|   84.4184  	|
| eval_best_exact_thresh 	|      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0      	|
| eval_best_f1           	|  73.4813 	|   77.6426 	|   70.1247  	|   81.5816  	|   85.8533  	|   87.4628   |
| eval_best_f1_thresh    	|      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0       |
| eval_exact             	|  67.8767 	|   74.2357 	|   65.9563  	|   78.6321  	|   82.8265  	|   84.4184   |
| eval_f1                	|  73.4813 	|   77.6426 	|   70.1163  	|   81.5816  	|   85.8533 	|   87.4628   |
| eval_samples           	|    12166 	|     12134 	|            	|           	|   12134    	|             |
| eval_total             	|    11873 	|     11873 	|   11873   	|   11873    	|   11873    	|   11873     |


- [BERT-medium](https://huggingface.co/mrm8488/bert-medium-finetuned-squadv2)
- [BERT-large](https://huggingface.co/madlag/bert-large-uncased-squadv2)
- [BERT-large*](https://huggingface.co/madlag/bert-large-uncased-whole-word-masking-finetuned-squadv2) (whole word masking)
- [ALBERT-XL](https://huggingface.co/ktrapeznikov/albert-xlarge-v2-squad-v2)

### FinSQuAD against other translated datasets/models (SQuAD 2.0)

|     | FinSQuAD     | BERT-base es | Indobert-qa | ParSQuAD    | Swe-BERT    |
|---  |----------    |------------  |------------ |------------ |------------ |
| em  |   67.88      |   63.36      |   51.61     |   62.42     |   66.73     |
| f1  |   73.48      |   70.22      |   69.09     |   65.26     |   70.11     |

- [BERT-base es](https://huggingface.co/MMG/bert-base-spanish-wwm-cased-finetuned-sqac-finetuned-squad2-es) Spanish
- [Indobert-qa](https://huggingface.co/Rifky/Indobert-QA) Indonesian
- [ParSQuAD](https://ieeexplore.ieee.org/document/9443126) Persian
- [Swe-BERT](https://towardsdatascience.com/swedish-question-answering-with-bert-c856ccdcc337) Swedish

