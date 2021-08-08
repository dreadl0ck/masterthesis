#!/bin/bash

editcap -A "2018-03-02 00:00:00" -B "2018-03-02 23:59:59" Friday-02-03-2018.pcapng cleaned_Friday-02-03-2018.pcapng 
mv cleaned_Friday-02-03-2018.pcapng Friday-02-03-2018.pcapng

editcap -A "2018-02-16 00:00:00" -B "2018-02-16 23:59:59" Friday-16-02-2018.pcapng cleaned_Friday-16-02-2018.pcapng
mv cleaned_Friday-16-02-2018.pcapng Friday-16-02-2018.pcapng
editcap -A "2018-02-23 00:00:00" -B "2018-02-23 23:59:59" Friday-23-02-2018.pcapng cleaned_Friday-23-02-2018.pcapng 
mv cleaned_Friday-23-02-2018.pcapng Friday-23-02-2018.pcapng
editcap -A "2018-03-01 00:00:00" -B "2018-03-01 23:59:59" Thursday-01-03-2018.pcapng cleaned_Thursday-01-03-2018.pcapng 
mv cleaned_Thursday-01-03-2018.pcapng Thursday-01-03-2018.pcapng
editcap -A "2018-02-15 00:00:00" -B "2018-02-15 23:59:59" Thursday-15-02-2018.pcapng cleaned_Thursday-15-02-2018.pcapng 
mv cleaned_Thursday-15-02-2018.pcapng Thursday-15-02-2018.pcapng
editcap -A "2018-02-22 00:00:00" -B "2018-02-22 23:59:59" Thursday-22-02-2018.pcapng cleaned_Thursday-22-02-2018.pcapng 
mv cleaned_Thursday-22-02-2018.pcapng Thursday-22-02-2018.pcapng
editcap -A "2018-02-20 00:00:00" -B "2018-02-20 23:59:59" Tuesday-20-02-2018.pcapng cleaned_Tuesday-20-02-2018.pcapng 
mv cleaned_Tuesday-20-02-2018.pcapng Tuesday-20-02-2018.pcapng
editcap -A "2018-02-14 00:00:00" -B "2018-02-14 23:59:59" Wednesday-14-02-2018.pcapng cleaned_Wednesday-14-02-2018.pcapng 
mv cleaned_Wednesday-14-02-2018.pcapng Wednesday-14-02-2018.pcapng
editcap -A "2018-02-21 00:00:00" -B "2018-02-21 23:59:59" Wednesday-21-02-2018.pcapng cleaned_Wednesday-21-02-2018.pcapng 
mv cleaned_Wednesday-21-02-2018.pcapng Wednesday-21-02-2018.pcapng

# something is odd with the time zone used in this capture.
# starting at 13:00 will lead to packets timestamps beginning at 8:00am.
# there is benign traffic during the entire night, we discard that to have the capture start around 8am similar to the other captures in the dataset.
editcap -A "2018-02-28 13:00:00" -B "2018-02-28 23:59:59" Wednesday-28-02-2018.pcapng cleaned_Wednesday-28-02-2018.pcapng 
mv cleaned_Wednesday-28-02-2018.pcapng Wednesday-28-02-2018.pcapng
