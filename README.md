# soletta-case-study
This repository contains the history of variability models of [solettaproject](https://github.com/solettaproject/soletta). We aquired the history of variability models by analyzing every commit in the time from 2015-06-26 to 2017-03-09. In addition this repository contains our results of analyzing the variability of the contained model history.

## Content

### [000_scripts](/000_scripts)
This directory contains the following utility scripts to ease the use of the provided data.
#### [compressModels.sh](/000_scripts/compressModels.sh)
Bundles all data contained in the [010_models](/010_models) directory into *.tar.gz archives. All existing archives will be deleted before the compressing process.
#### [compressSamples.sh](/000_scripts/compressSamples.sh)
Bundles all data contained in the [020_samples](/010_models) directory into *.tar.gz archives. All existing archives will be deleted before the compressing process.
#### [decompressModels.sh](/000_scripts/decompressModels.sh)
Extracts all *.tar.gz archives contained in the [010_models](/010_models) directory. All existing model directories will be replaced.
#### [decompressSamples.sh](/000_scripts/decompressSamples.sh)
Extracts all *.tar.gz archives contained in the [020_samples](/020_samples) directory. All existing sample directories will be replaced.
#### [deleteModels.sh](/000_scripts/deleteModels.sh)
Deletes all model directories contained in [010_models](/010_models). Archive files will not be deleted. Make sure to bundle changes done to the models before using this script.
#### [deleteSamples.sh](/000_scripts/deleteSamples.sh)
Deletes all sample directories contained in [020_samples](/020_samples). Archive files will not be deleted. Make sure to bundle changes done to the samples before using this script.

#### Instructions
To use the provided utility scripts follow the instructions bellow:
1. Change into the [000_scripts](/000_scripts/) directory.
2. Open a terminal in this folder.
3. Make sure the script you want to execute is actually executable by typing *chmod 777 <./SCRIPTNAME>* into the terminal and press enter.
4. Execute the script by typing *./<SCRIPTNAME>* into the terminal and press enter.

Some scripts may need some time to run. Please be patient.

### [010_models](/010_models/) *UNDER CONSTRUCTION*
Variability models of Soletta in DIMACS and [FeatureIDE](https://featureide.github.io/) feature model format. 

### [020_samples](/020_samples/)
Samples for the feature models contained in [010_models](/010_models). Samples are calculated by using various sampling algorithms provided by [FeatureIDE](https://featureide.github.io/).

### [030_sampling_stability](/030_sampling_stability/)
Analysis results of calculating the similarity between samples.

### [040_configuration_space](/040_configuration_space/)
Results of analyzing the configuration space of the variability models of BusyBox, contained in [010_models](/010_models). The analysis is done by using the following sharpSAT solvers:
* [sharpSAT]()
* [D4]()
* [countAntom]()
<!--- # ### [050_clause_analysis](/050_clause_analysis/)
Results of analyzing the differences in clause sizes between consecutive variability models of BusyBox.-->

## Licensing
The source code in this repository is licensed under the [GNU General Public License v3.0](/LICENSE). The data files contained in this repository are licensed under the [CC-BY-4.0](/cc-by-4.0.md). You are free to use, share, and adapt the data and source code in this repository as long as you give appropriate credit to the data owner. [Solettaproject](https://github.com/solettaproject/soletta) itself is licensed under the [Apache 2.0 license](/apache2_LICENSE) which we also provide in this repository. 

## Note
This repository is under constant development and changes frequently. If you encounter any challenges using the content or identify missing or broken content, please reach out to us via e-mail at [t.pett@tu-braunschweig.de].
