#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# Switch to samples directory
PATH_DATA=${PATH_CURRENT}/020_samples

#iterate over all timestamps and decompress samples
for timestamp in ${PATH_DATA}/*.tar.gz; do
	tar -xzvf ${timestamp}
done
