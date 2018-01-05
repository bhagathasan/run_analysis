.library(dplyr)
setwd("C:\\Users\\Hasan\\Statistics\\R\\UCI HAR Dataset")

features=as.character(read.table("features.txt")[[2]])		
activities=read.table("activity_labels.txt")	

#Finding the poisitions to extract only the mean and sd of the measurements
pos=sort(c(grep("mean[^a-zA-Z]",features),pos_std=grep("std[^a-zA-Z]",features)))

#Training variables
x_train=read.table("train\\X_train.txt")[pos]			
y_train=read.table("train\\y_train.txt")			
sub_train=read.table("train\\subject_train.txt")[[1]]	

#Test Variables
x_test=read.table("test\\X_test.txt")[pos]		
y_test=read.table("test\\y_test.txt")			
sub_test=read.table("test\\subject_test.txt")[[1]]		

#merging the two datasets
x=rbind(x_train,x_test)
y=rbind(y_train,y_test)
subjects=c(sub_train,sub_test)

#assigning activity names 
y_activities=sapply(y[[1]],function(x) activities[x,2])

#creting the final dataset based on the mean and sd of all the measurements
data=cbind(subjects,y_activities,x)
names(data)=c("Subject","Activities",features[pos])

#creatng the tidy dataset by averaging over all subjects and all activities
data2=data %>%
	group_by(Subject,Activities) %>%
	summarize_all(mean)

#writing the tidy data file into a txt document
write.table(data2,"tidy data.txt",row.names=FALSE)

