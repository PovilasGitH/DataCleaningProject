
# "Getting and Cleaning Data" course project 

There is presented sequence of actions need to clean up the data. 

The project data can be dowloaded from [here]  (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

  More detailed  information can be found [here]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
  
 Data transformation and cleaning script *run_analysis.r*  performs such action:
  1.  Read files from directory named 'Data' which is saved in the same directory as the scrip *run_analysis.r*
  2.  The data of source files have been read into such variables:
       - X_train.txt ->  *TrData*
       - y_train.txt ->  *TrLabel*
       - subject_train.txt -> *TrSubject*
       - X_test.txt -> *TsData*
       - y_test.txt ->  *TsLabel*
       - subject_test.txt -> *TsSubject*
       - features.txt -> *FeaturesData*
       - activity_labels.txt -> *ActivityData*
  3. Next data sets in training variables  and test variables are joined.
  4. Data columns which contains mean and standart deviation values are filtered. All columns names of the data set can be found [here](https://github.com/PovilasGitH/DataCleaningProject/blob/master/Data/features.txt)
  5. Columns names are set to the observations data set data and modified by removing symbols: "-", "(",")" and changing words *mean*, *std to *Mean* and *Std* respectively.
  6. Activity names are assined to activity indices
  7. Variables which contains activity names and subject indices are join to main observation data set.
  8. File *cleaned_data.txt* with cleaned data  is created 
  9. File *calculated_average_data.txt* from calculated averages on all variables by all subject and activity is created.



