# SQuAD models & datasets comparison

### FinSQuAD (SQuAD 2.0, Finnish MT) against other baselines (SQuAD 2.0, English)

|                        	| FinSQuAD 	| BERT-base 	| BERT-medium | BERT-large  | BERT-large* | ALBERT-XL   |
|------------------------	|----------	|-----------	|-----------	|-----------	|------------ |----------   |
| training script         |  run_qa   |   run_qa    |   run_qa    |   run_qa    |   run_qa    |   run_qa    |
| has answer exact      	|  57.4606 	|   72.3853 	|   67.7968  	|   73.7348 	|   80.5836   |   80.6848   |
| has answer f1         	|  68.8472 	|   79.2090 	|   76.1287  	|   79.6422  	|   86.6459 	|   86.7824   |
| has answer total      	|     5844 	|      5928 	|   5928     	|   5928    	|   5928     	|   5928      |
| no answer exact       	|  77.9731 	|   76.0807 	|   64.1211  	|   83.5155  	|   85.0630 	|   88.1412   |
| no answer f1          	|  77.9731 	|   76.0807 	|   64.1211  	|   83.5155  	|   85.0630  	|   88.1412  	|
| no answer total       	|     6029 	|      5945 	|   5945     	|   5945     	|   5945     	|   5945     	|
| best exact        	    |  67.8767 	|   74.2357 	|   65.9647  	|   78.6321  	|   82.8265  	|   84.4184  	|
| best exact thresh 	    |      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0      	|
| best f1           	    |  73.4813 	|   77.6426 	|   70.1247  	|   81.5816  	|   85.8533  	|   87.4628   |
| best f1 thresh    	    |      0.0 	|       0.0 	|   0.0      	|   0.0      	|   0.0      	|   0.0       |
**| exact match           |  67.8767 	|   74.2357 	|   65.9563  	|   78.6321  	|   82.8265  	|   84.4184   |**
**| f1                	  |  73.4813 	|   77.6426 	|   70.1163  	|   81.5816  	|   85.8533 	|   87.4628   |**
| samples           	    |    12166 	|     12134 	|            	|           	|   12134    	|             |
| total             	    |    11873 	|     11873 	|   11873   	|   11873    	|   11873    	|   11873     |

- FinSQuAD & Bert-base are trained by me with identical training parameters.
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

