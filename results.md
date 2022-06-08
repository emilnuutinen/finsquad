# Result tables for different models on SQuAD

### FinSQuAD against other baselines (SQuAD 2, English)

|                        	| FinSQuAD 	| BERT BASE 	| BERT-medium | BERT-large  | BERT-large* | ALBERT-XL   |   	|   	|
|------------------------	|----------	|-----------	|-----------	|-----------	|------------ |----------   |---	|---	|
| Training script         |  run_qa   |   run_qa    |             |   run_qa    |   run_qa    |   run_qa    |     |     |
| eval_HasAns_exact      	|  57.4606 	|   73.5661 	|   67.7968  	|   73.7348 	|   80.5836   |   80.6848   |   	|   	|
| eval_HasAns_f1         	|  68.8472 	|   80.5124 	|   76.1287  	|   79.6422  	|   86.6459 	|   86.7824   |   	|   	|
| eval_HasAns_total      	|     5844 	|      5928 	|   5928     	|   5928    	|   5928     	|   5928      |   	|   	|
| eval_NoAns_exact       	|  77.9731 	|   72.5484 	|   64.1211  	|   83.5155  	|   85.0630 	|   88.1412   |   	|   	|
| eval_NoAns_f1          	|  77.9731 	|   72.5484 	|   64.1211  	|   83.5155  	|   85.0630  	|   88.1412  	|   	|   	|
| eval_NoAns_total       	|     6029 	|      5945 	|   5945     	|   5945     	|   5945     	|   5945     	|   	|   	|
| eval_best_exact        	|  67.8767 	|   73.0565 	|   65.9647  	|   78.6321  	|   82.8265  	|   84.4184  	|   	|   	|
| eval_best_exact_thresh 	|      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0      	|   	|   	|
| eval_best_f1           	|  73.4813 	|   76.5247 	|   70.1247  	|   81.5816  	|   85.8533  	|   87.4628   |   	|   	|
| eval_best_f1_thresh    	|      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0       |   	|   	|
| eval_exact             	|  67.8767 	|   73.0565 	|   65.9563  	|   78.6321  	|   82.8265  	|   84.4184   |   	|   	|
| eval_f1                	|  73.4813 	|   76.5247 	|   70.1163  	|   81.5816  	|   85.8533 	|   87.4628   |   	|   	|
| eval_samples           	|    12166 	|     12134 	|            	|           	|   12134    	|             |   	|   	|
| eval_total             	|    11873 	|     11873 	|   11873   	|   11873    	|   11873    	|   11873     |   	|   	|


- [ALBERT-XL](https://huggingface.co/ktrapeznikov/albert-xlarge-v2-squad-v2)
- [BERT-medium](https://huggingface.co/mrm8488/bert-medium-finetuned-squadv2)
- [BERT-large](https://huggingface.co/madlag/bert-large-uncased-squadv2)
- [BERT-large*](https://huggingface.co/madlag/bert-large-uncased-whole-word-masking-finetuned-squadv2) (whole word masking)
