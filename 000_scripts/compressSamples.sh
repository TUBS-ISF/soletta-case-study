#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# Switch to samples directory
PATH_DATA=${PATH_CURRENT}/020_samples

cd ${PATH_DATA}
#iterate over all timestamps and decompress samples
rm -rf *.tar.gz
for timestamp in *; do
	tar -zcvf ${timestamp}.tar.gz ${timestamp}
done
