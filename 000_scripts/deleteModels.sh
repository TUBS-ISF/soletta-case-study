#! /bin/bash
### This script removes all model folders. Use with care and only if you are sur your changes are archieved befor. To archieve your changes use the script "./compressModels".

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
	#iterate over files of the current year
	for file in *; do
		# check whether the current file is not an archieve
		if [[ ${file} != *".tar.gz"* ]];then
			# remove directory
			rm -vr ${file}
		fi
	done
done
