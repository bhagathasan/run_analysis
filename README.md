# run_analysis
The goal of the analysis is to obtain a tidy dataset which gives average of the mean and sd of the measurements obtained from the smartphone.

1.The data is first read into R and stored in appropriate variables.
(Refer to the codebook for detailed description of the variables)

2.To extract only those columns which contain the mean and sd of the measurements, we use the grep() function to find the positions , where the word mean or sd occur.

3.Assuming that the data in features and X_train and X_test are alligned in the same way, we read only the mean and sd columns from the 2 datasets.

4.Using sapply and the concept of anonymous function, the activity codes are replaced by the descriptive activity name.

5.A dataset with appropriate variable names is created.

6.The data is obtained from 5 is grouped by the variables Subject and Activities and averaged upon to obtain the required tidy dataset.

7.The tidied up data is written in a txt document for later use.
