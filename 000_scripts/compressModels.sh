#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# set root path for data
PATH_DATA=${PATH_CURRENT}/010_models

cd ${PATH_DATA}
#iterate over years
for year in ${PATH_DATA}/*; do
	echo ${year}
	cd ${year}
	# remove existing *tar.gz archieves to prevent errors
	rm *.tar.gz
	#iterate over timestamps of the current year
	for timestamp in *; do
		# compress models of current timestamp
		tar -zcvf ${timestamp}.tar.gz ${timestamp}
	done
done
