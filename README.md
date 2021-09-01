# Masterthesis Code

This repository contains executions logs and scripts to reproduce the experiments from our masterthesis _"Good || Evil: Defending Infrastructure at Scale with Anomaly and Classification Based Network Intrusion Detection"_

- Link to paper: https://rp.os3.nl/2020-2021/p75/report.pdf
- Presentation: https://rp.os3.nl/2020-2021/p75/presentation.pdf

## Structure

The _dnn_ folder contains the logs from the experiment execution of the deep neural network experiments, namely _v1_ and _v2_.

Each one has a folder that contains the model from the last execution, as well as folders for the tensorboard logs for each run, sequentially numbered.

The core experiment logic is in _dnn/v1/experiment1.sh_ and _dnn/v1/experiment2.sh_ respectively.

The _screenlog.0_ file contains the raw output from the experiment script execution, the file _v1.csv_ and _v2.csv_ files contain a generated spreadsheet for human analysis.

## CIC IDS 2018 Attack Descriptions

_dnn/cic-ids2018-attacks.yml_ contains the attacks mapped onto the audit records.

## Throughput measurement

_dnn/pps-line.png_ is the line chart for the packet ingestion performance measured in packets per second when generating the connection audit records used in our experiments.

## Connection Audit Record Generation

To generate and label the audit records for the experiments by processing the raw pcap files, the _dnn/process-pcaps.sh_ script is used.

Please make sure to use at least netcap version _v0.6.0_ for the reproduction of our experiment results, and _v0.6.1_+ if you want to generate the throughput measurement chart automatically.

### Pcap preprocessing

The pcaps for the CIC IDS 2018 dataset are provided for each day, as individual capture files per host.
We merged these into a single pcap file for each day of the dataset.

After merging we noticed that some captures contained traffic from multiple days, and there decided to clean them to ensure each file would only contain traffic for the desired day.
The _dnn/clean-days.sh_ script is used for this purpose.

## Extract generated plots

The experiment code will generate several plots, to extract them all into a single directory the _dnn/extract-plots.sh_ script can be used.

## LFS

Some files in this repository are too big for github and therefore provided via git large file storage extension.

To install the git lfs extension, use:

    Apt/deb: sudo apt-get install git-lfs
    Yum/rpm: sudo yum install git-lfs
    MacOS: brew install git-lfs

Afterwards just clone the repository as usual:

    git clone git@github.com:dreadl0ck/masterthesis.git

## TODO

- add dataset files to git lfs
- add docs for experiment reproduction, and cleanup all readme files accross the repo