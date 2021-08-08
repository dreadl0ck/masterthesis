#!/bin/bash -e

mkdir -p plots 

for f in v*/*.net/*.png; do
	# ensure directory exists
	mkdir -p plots/$(echo $f | cut -d/ -f1)
	echo "copying $f"
	cp $f plots/$(echo $f | cut -d/ -f1)/$(echo $f | cut -d/ -f2)-$(echo $f | cut -d/ -f3)
done
