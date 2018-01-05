# run_analysis
#DESCRIPTIONS OF THE VARIABLES USED IN THE RUN_ANALYSIS

-"features":
a character vector for storing the names of 561 features.

-"activities":
a 6x2 dataframe containing the name of the 6 activities performed by the subjects.

-"pos":
an integer vector to store the position where the string "mean()" and "std()" appears in the "features" vector.

-"x_train":
a 7352x66 dataframe containing the mean and sd for all the measurements corresponding to 7352 training individuals.

-"y_train":
a 7352x1 dataframe containing the activity code corresponding to 7352 training individuals.

-"sub_train":
an integer vector of length 7352 containing the training subject's code	

-"x_test":
a 2947x66 dataframe containing the mean and sd for all the measurements corresponding to 2947 testing individuals.

-"y_test":
a 2947x1 dataframe containing the activity code corresponding to 2947 testing individuals.

-"sub_test":
an integer vector of length 2947 containing the testing subject's code

-"x":
dataframe obtained by merging "x_train" and "x_test"

-"y":
dataframe obtained by merging "y_train" and "y_test"

-"subjects":
integer vector containing the code for all the subjects (training subjects and test subjects)

-"y_activities":
vector obtained by assigning descriptive activity name from the "activities" variable to "y".

-"data":
final dataset obtained by merging "subjects","y_activities" and "x"

-data2:
tidy dataset obtained from "data" by grouping an averaging on the basis of Subject and Activities.
