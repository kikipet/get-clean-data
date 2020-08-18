# get-clean-data

The attached R script cleans up the data found in X_train.txt, X_test.txt, Y_train.txt, and Y_test.txt, then outputs the following data file.

More specifically:

1. Reads the data from X_train.txt, X_test.txt, Y_train.txt, and Y_test.txt
2. Extracts only the variables that are the mean or standard deviation of a certain measure
3. Give clearer/more descriptive labels for variable names and for activity names (standing, sitting, etc.)
4. Find average values of each variable for each activity/subject combination

## mean-sd.txt
Contains the average values of all "mean" and "std" variables for each activity/subject combination
