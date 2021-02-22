#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# set root path for data
PATH_DATA=${PATH_CURRENT}/010_models

#iterate over years
for year in ${PATH_DATA}/*; do
	cd ${year}
	# iterate over timestamp for the current year
	for timestamp in *.tar.gz; do
		# decompress timestamp archieve
		tar -xzvf ${timestamp}
	done
done
