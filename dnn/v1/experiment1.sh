#!/bin/bash

## BINARY CLASSIFICATION TESTS + MULTICLASS WITH TUNED SETTINGS

# 
# optimizations:
# - best performing network size
# - best performing batch size 
# - shuffling
# - new connection audit records with more features
# - log share of pos in both splits

#######################################################
# TODO: make other params configurable
BATCH_SIZE=1024
#######################################################

#
## SINGLE DAYS
## WITH ADDR INFO
#

echo "running with addr info"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-batchSize=$BATCH_SIZE \
		-features 28 \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-encodeColumns \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information"
done

echo "running with addr info, with class weights"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-batchSize=$BATCH_SIZE \
		-features 28 \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-encodeColumns \
		-initialBias \
    	-classWeights \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with class weights"
done

echo "running with addr info, with tweaked class weights"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-encodeColumns \
		-initialBias \
    	-classWeights \
		-positiveFactor=-1 \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with tweaked class weights"
done

echo "running with addr info, with dropout layer"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-encodeColumns \
		-dropoutLayer \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with dropout layer"
done

echo "running with addr info, with relu"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-minmax \
		-shuffle \
		-encodeColumns \
		-relu \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with relu activation and minmax"
done

#
## WITHOUT ADDR INFO
#

echo "without addr info"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
		-encodeColumns \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information"
done

echo "without addr info, with class weights"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
		-encodeColumns \
		-initialBias \
    	-classWeights \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with class weights"
done

echo "without addr info, with tweaked class weights"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
		-encodeColumns \
		-initialBias \
    	-classWeights \
		-positiveFactor=-1 \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with tweaked class weights"
done

echo "running without addr info, with dropout layer"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-shuffle \
		-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
		-encodeColumns \
		-dropoutLayer \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"
done

echo "running without addr info, with relu"

for dir in *.net; do
	echo ">> processing $dir"
	python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
		-features 28 \
		-batchSize=$BATCH_SIZE \
		-read $dir/Connection.csv \
		-numCoreLayers=16 \
		-coreLayerSize=32 \
		-wrapLayerSize=16 \
		-score \
		-mem \
		-minmax \
		-shuffle \
		-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
		-encodeColumns \
		-relu \
		-testSize=0.25 \
		-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with relu activation and minmax"
done

#
## FULL DATASET
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with tweaked class weights"

# with addr info, with dropout layer
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-dropoutLayer \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with dropout layer"

# with addr info, with relu
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-minmax \
	-shuffle \
	-encodeColumns \
	-relu \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with relu and minmax"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with tweaked class weights"

# without addr info, with dropout layer
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-dropoutLayer \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

# without addr info, with relu
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-minmax \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-relu \
	-testSize=0.25 \
	-notes "BINARY | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with relu and minmax"

######################################
## MULTI CLASS CLASSIFICATION TESTS ##
######################################

## ON FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information"

# with addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-initialBias \
	-classWeights \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with class weights"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with dropout layer"

# with addr info and relu
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-relu \
	-minmax \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with relu and minmax"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-initialBias \
	-classWeights \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with class weights"

# without addr info and dropout layer
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

# with addr info and relu
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-score \
	-mem \
	-shuffle \
	-relu \
	-minmax \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with relu and minmax"