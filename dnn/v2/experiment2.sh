#!/bin/bash

## MULTI CLASS CLASSIFICATION experiments
## batch size tests with dnn size 16 - 32 - 16

BATCH_SIZE=128

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

BATCH_SIZE=256

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

BATCH_SIZE=512

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

BATCH_SIZE=1024

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

BATCH_SIZE=2048

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"

BATCH_SIZE=4096

# FULL DATASET

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information"

# with addr info and dropout
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | with address information | with dropout layer"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | without address information"

# without addr info and class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
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
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-batchSize=$BATCH_SIZE \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-dropoutLayer \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with dropout layer"


##
##
##
##
##
##
## DNN Size experiments
##
##
##
##
##
##
##


## dnn size impact, multiclass classification

BATCH_SIZE=1024

# FULL DATASET

#
### 2 - 4 - 2
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=2 \
	-coreLayerSize=4 \
	-wrapLayerSize=2 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 2 - 4 - 2 | without address information | with tweaked class weights"

# FULL DATASET

#
### 4 - 8 - 4
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=4 \
	-coreLayerSize=8 \
	-wrapLayerSize=4 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 4 - 8 - 4 | without address information | with tweaked class weights"

#
# ## 8 - 16 - 8 
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=8 \
	-coreLayerSize=16 \
	-wrapLayerSize=8 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 8 - 16 - 8 | without address information | with tweaked class weights"

#
# ## 16 - 32 - 16 
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=16 \
	-coreLayerSize=32 \
	-wrapLayerSize=16 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 16 - 32 - 16 | without address information | with tweaked class weights"

#
# ## 32 - 64 - 32 
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=32 \
	-coreLayerSize=64 \
	-wrapLayerSize=32 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 32 - 64 - 32 | without address information | with tweaked class weights"

#
# ## 64 - 128 - 64 
#

# with addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | with address information"

# with addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | with address information | with class weights"

# with addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | with address information | with tweaked class weights"

# without addr info
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | without address information"

# without addr info, with class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | without address information | with class weights"

# without addr info, with tweaked class weights
python3 $HOME/go/src/github.com/dreadl0ck/netcap/analyze/dnn/train.py \
	-features 28 \
	-batchSize=$BATCH_SIZE \
	-numCoreLayers=64 \
	-coreLayerSize=128 \
	-wrapLayerSize=64 \
	-read all/Connection.csv \
	-score \
	-mem \
	-shuffle \
	-drop=SrcIP,DstIP,SrcMAC,DstMAC,SrcPort \
	-initialBias \
    -classWeights \
	-encodeColumns \
	-positiveFactor=-1 \
	-testSize=0.25 \
	-classes normal,denial-of-service,bruteforce,injection,infiltration,botnet \
	-notes "MULTICLASS | BATCH_SIZE: $BATCH_SIZE | 64 - 128 - 64 | without address information | with tweaked class weights"
