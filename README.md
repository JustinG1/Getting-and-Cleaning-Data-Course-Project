README.md file for run_analysis.R

This code is divided into many different sections that follow a logical flow.

The preliminary step - STEP 0 - first loads the stringr package as the code will later make use of the str_replace_all function in STEP 3. How it was used will be explained further down.

STEP 1: In this step all the files required to be modified and eventually joined are read from the working directory using read.table. They are all text files. The data for this study was split randomly by subject into two sections: the training data (70% of the data) and the test data (30% of the data). Both the training and test data each had an x-file, y-file and a subject file. The x file contains all the observations obtained and is the main data set. The y-file contained the activity type that was used for the observations in the x file. The subject file contained which subject a line in the x file related to. Other files loaded were the features.txt - this basically included all the column headings/variable names for the x-file - and activity_labels.txt - included a translation of the code in y (a value 1-6) into a more descriptive representation of the activity being done (ex: walking...)

STEP 2: In this step the data from the x files were subsetted to include only the mean and standard deviation variables. These variables were found using grepl and looking for the words mean and std. This was also applied to the feature table. This step cut the data down from over 500 variables to 79.

STEP 3: First the feature table was converted to a character format. The next step was making all the column names be lower case as this is in line with what is considered a component of a clean column name. Following this the str_replace_all function was used to get rid of abbreviations and other symbols. 

STEP 4: The column names are then applied to the x files using the cleaned up names derived from step 3. Column names are also applied to the y files and subject files - "subjectid" and "activities" are the column names given respectively.

STEP 5: The x files, y files and subject files are merged with their respective counterparts using the row binding function rbind. The new merged files are given the name xtotal, yTotal and subTotal

STEP 6: The yTotal observations are changed from a numeric id to a more descriptive one using. For instance, the value 1 is given the new value "walking" and so on.

STEP 7: The total files are all merged into one dataset using the column binding function cbind. This is given the handle xydata

STEP 8: The mean is calculated for each variable left in the xydata datatable. The calculation is grouped by the subjectid and the activity. The aggregate functon was used. The first arguement is the group all columns by subjectid and activities. The function applied is the mean. The table is given the moniker tidydata and is the completed table.

STEP 9: The table is written to the working directory and given the name "tidydata.txt"

