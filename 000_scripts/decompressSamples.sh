#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# Switch to samples directory
PATH_DATA=${PATH_CURRENT}/020_samples

#iterate over years
for year in ${PATH_DATA}/*; do
	cd ${year}
#iterate over all timestamps and decompress samples
	for timestamp in ${year}/*.tar.gz; do
		tar -xzvf ${timestamp}
	done
done
