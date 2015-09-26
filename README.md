# Coursera Data Cleanding course project


The result of this project is the creation of the script *run_analysis.R*. This script execute the data transformation and cleaning. 

## Execution of the script
- Data for the script can be downloaded [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- They must be unziped and saved into the directory named "data"
- *run_analysis.R* script must be saved in the same directory as the directory "data"
- Working directory must be changed to the directory  where *run_analysis.R* is saved
- The script can be run in RStudio by the command `source("run_analysis.R")`

## Results of the script
Two files will be created in the working directory:

- *cleaned_data.txt* : It contains cleaned and transformed data from the sources mentioned above
- *calculated_average_data.txt* : It contains agregated data, which are calculated from the same data as in *cleaned_data.txt* by calculating means for all variable by every subject observed and activiy type.


