#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# Switch to samples directory
PATH_DATA=${PATH_CURRENT}/020_samples

cd ${PATH_DATA}
#iterate over all timestamps and decompress samples
for year in ${PATH_DATA}/*; do
	echo ${year}
	cd ${year}
	rm -rf *.tar.gz
	for timestamp in *; do
		tar -zcvf ${timestamp}.tar.gz ${timestamp}
	done
done
