# v1 BINARY CLASSIFICATION TESTS + MULTICLASS WITH TUNED SETTINGS

optimizations:

- best performing network size
- best performing batch size
- shuffling
- new connection audit records with more features
- log share of positive class in training and testing splits

## BINARY CLASSIFICATION

### SINGLE DAYS

- with addr info
- with addr info, with class weights
- with addr info, with tweaked class weights
- with addr info, with dropout layer
- with addr info, with relu

- without addr info
- without addr info, with class weights
- without addr info, with tweaked class weights
- without addr info, with dropout layer
- without addr info, with relu

### FULL DATASET

- with addr info
- with addr info, with class weights
- with addr info, with tweaked class weights
- with addr info, with dropout layer
- with addr info, with relu

- without addr info
- without addr info, with class weights
- without addr info, with tweaked class weights
- without addr info, with dropout layer
- without addr info, with relu

## MULTI CLASS CLASSIFICATION TESTS

### FULL DATASET

- with addr info
- with addr info and class weights
- with addr info and dropout
- with addr info and relu

- without addr info
- without addr info and class weights
- without addr info and dropout layer
- with addr info and relu