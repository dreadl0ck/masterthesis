#!/bin/bash

for f in *.pcapng; do
	echo "processing $f"
	net capture -read $f \
		-reassemble-connections=false \
		-labels cic-ids2018-attacks.yml \
		-include Connection \
		-csv \
		-out $f.net \
		-noprompt \
		-compress=false \
		-scatter-duration=15m
done


