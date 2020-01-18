#!/bin/bash 

version="2.8.6"

id_sparsePCA_pip3="c971dd9f-2232-43a0-8104-088d109d5f94" 


####################################################
# SparsePCA  -- LL0_207_autoPrice_MIN_METADATA
####################################################
id_run="${id_sparsePCA_pip3}_run"
path_1="ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/$version/pipelines/$id_sparsePCA_pip3.json"
path_2="../datasets/seed_datasets_current/LL0_207_autoPrice_MIN_METADATA/LL0_207_autoPrice_MIN_METADATA_problem/problemDoc.json"
path_3="../datasets/seed_datasets_current/LL0_207_autoPrice_MIN_METADATA/LL0_207_autoPrice_MIN_METADATA_dataset/datasetDoc.json"
path_4="../datasets/seed_datasets_current/LL0_207_autoPrice_MIN_METADATA/TEST/dataset_TEST/datasetDoc.json"
path_5="../datasets/seed_datasets_current/LL0_207_autoPrice_MIN_METADATA/SCORE/dataset_SCORE/datasetDoc.json"
path_6="ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/$version/pipelines/$id_run.yaml"

echo python3 -m d3m runtime fit-score -p $path_1 -r $path_2 -i $path_3 -t $path_4 -a $path_5 -O $path_6
`echo python3 -m d3m runtime fit-score -p $path_1 -r $path_2 -i $path_3 -t $path_4 -a $path_5 -O $path_6`

`echo mkdir ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/$version/pipeline_runs`

`echo gzip ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/$version/pipelines/$id_run.yaml`

`echo mv ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/$version/pipelines/$id_run.yaml.gz ICSI/d3m.primitives.feature_extraction.sparse_pca.SparsePCA/2.8.5/pipeline_runs`
