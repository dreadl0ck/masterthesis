# README

- TODO add detailed documentation to reproduce experiments

## Steps to reproduce from dataset pcaps

To generate the labeled audit records from scratch, start here:

### Download data set

Follow the instructions here: https://www.unb.ca/cic/datasets/ids-2018.html

### Merge pcaps

TODO: add merge script

### Clean pcaps

Use the _clean-days.sh_ script.

### Install Netcap

Follow the instructions for installation on https://docs.netcap.io if you want to compile from source,
or grab a binary release for your platform from https://github.com/dreadl0ck/netcap/releases.

### Generate and label audit records

Use the _process-pcaps.sh_ script to process the pcap file for each day and generate connection audit records from it. 

#### Merge all audit records for each day into a single CSV file

TODO add script

### Install Tensorflow

> If you want to use the labeled audit records provided with this repository, you can directly start here.

Follow the instructions here to install via pip: https://www.tensorflow.org/install

In a nutshell:

    # Requires the latest pip
    pip install --upgrade pip
    
    # Current stable release for CPU and GPU
    pip install tensorflow

### Run experiment scripts

_v1/experiment1.sh_ and _v2/experiment2.sh_ 

### Analyze generated spreadsheets

You can import the CSV files to google sheets or any other tabular software to analyze the results.