#! /bin/bash
### This script removes all sample folders. Use with care and only if you are sure your changes are archieved before. To archieve your changes use the script "./compressSamples".

# Go to main directory
cd ..
PATH_CURRENT=$PWD
# set root path for data
PATH_DATA=${PATH_CURRENT}/020_samples

cd ${PATH_DATA}
	#iterate over files
	for file in *; do
		# check whether the current file is not an archieve
		if [[ ${file} != *".tar.gz"* ]];then
			# remove directory
			rm -vr ${file}
		fi
	done
