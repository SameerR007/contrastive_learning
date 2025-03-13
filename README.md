# Enhancing Text Retrieval Pipelines with Contrastive Learning

## Dataset Variants

- **v1.1** – Models trained and evaluated on **MS MARCO v1.1** (Primary dataset for this study).  
- **v2.1** – Models trained and evaluated on **MS MARCO v2.1**.  
- **Arxiv** – Models trained and evaluated on the **ArXiv dataset**.  
- **DBpedia14** – Models trained and evaluated on the **DBpedia dataset**.  

## Evaluation Settings

- **BEIR** – Models trained on **v1.1 dataset** and evaluated across **13 datasets**.  
- **Corrupt** – Models trained on **v1.1 dataset** and evaluated **(in-domain & zero-shot) with corrupted queries**.  
- **Le Cam** – Models trained using **Le Cam divergence** instead of **entailment loss**.  
- **Test** – Used for **debugging purposes**.  
