

##### reading for test files
sub_test=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt") ### contains id`s
#id
id_test=t(unique(sub_test))
## sub_test id`s 2 4 9 10 12 13 18 20 24
x_test=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt") ### time
y_test=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
fi_test<-list.files("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals",full.names=T);
test_data<-lapply(fi_test,read.table);
########
### x = 1, y= 2, z =3
## body accu
body_acc_test_1=test_data[[1]]; colnames(body_acc_test_1) <- 1:128;
colnames(body_acc_test_1) <- paste("body_acc", colnames(body_acc_test_1), sep = "_")

body_acc_test_2=test_data[[2]]; colnames(body_acc_test_2) <- 1:128;
colnames(body_acc_test_2) <- paste("body_acc", colnames(body_acc_test_2), sep = "_")

body_acc_test_3=test_data[[3]]; colnames(body_acc_test_3) <- 1:128;
colnames(body_acc_test_3) <- paste("body_acc", colnames(body_acc_test_3), sep = "_")
## body gyro
body_gyro_test_1=test_data[[4]]; colnames(body_gyro_test_1) <- 1:128;
colnames(body_gyro_test_1) <- paste("body_gyro", colnames(body_gyro_test_1), sep = "_")

body_gyro_test_2=test_data[[5]]; colnames(body_gyro_test_2) <- 1:128;
colnames(body_gyro_test_2) <- paste("body_gyro", colnames(body_gyro_test_2), sep = "_")

body_gyro_test_3=test_data[[6]]; colnames(body_gyro_test_3) <- 1:128;
colnames(body_gyro_test_3) <- paste("body_gyro", colnames(body_gyro_test_3), sep = "_")
## body total accu
total_acc_test_1=test_data[[7]]; colnames(total_acc_test_1) <- 1:128;
colnames(total_acc_test_1) <- paste("total_acc", colnames(total_acc_test_1), sep = "_")

total_acc_test_2=test_data[[8]]; colnames(total_acc_test_2) <- 1:128;
colnames(total_acc_test_2) <- paste("total_acc", colnames(total_acc_test_2), sep = "_")

total_acc_test_3=test_data[[9]]; colnames(total_acc_test_3) <- 1:128;
colnames(total_acc_test_3) <- paste("total_acc", colnames(total_acc_test_3), sep = "_")

############
############
############
############
############
############

##### reading for train files
sub_train=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt") ### contains id`s
#id
id_train=t(unique(sub_train))
## sub_train id`s 1 3 5 6 7 8 11 14 15 16 17 19 21 22 23 25 26 27 28 29 30
x_train=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt") ### time
y_train=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
fi_train<-list.files("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals",full.names=T);
train_data<-lapply(fi_train,read.table);
########
### x = 1, y= 2, z =3
## body accu
body_acc_train_1=train_data[[1]]; colnames(body_acc_train_1) <- 1:128;
colnames(body_acc_train_1) <- paste("body_acc", colnames(body_acc_train_1), sep = "_")

body_acc_train_2=train_data[[2]]; colnames(body_acc_train_2) <- 1:128;
colnames(body_acc_train_2) <- paste("body_acc", colnames(body_acc_train_2), sep = "_")

body_acc_train_3=train_data[[3]]; colnames(body_acc_train_3) <- 1:128;
colnames(body_acc_train_3) <- paste("body_acc", colnames(body_acc_train_3), sep = "_")

## body gyro
body_gyro_train_1=train_data[[4]]; colnames(body_gyro_train_1) <- 1:128;
colnames(body_gyro_train_1) <- paste("body_gyro", colnames(body_gyro_train_1), sep = "_")

body_gyro_train_2=train_data[[5]]; colnames(body_gyro_train_2) <- 1:128;
colnames(body_gyro_train_2) <- paste("body_gyro", colnames(body_gyro_train_2), sep = "_")

body_gyro_train_3=train_data[[6]]; colnames(body_gyro_train_3) <- 1:128;
colnames(body_gyro_train_3) <- paste("body_gyro", colnames(body_gyro_train_3), sep = "_")

## body total accu
total_acc_train_1=train_data[[7]]; colnames(total_acc_train_1) <- 1:128;
colnames(total_acc_train_1) <- paste("total_acc", colnames(total_acc_train_1), sep = "_")

total_acc_train_2=train_data[[8]]; colnames(total_acc_train_2) <- 1:128;
colnames(total_acc_train_2) <- paste("total_acc", colnames(total_acc_train_2), sep = "_")

total_acc_train_3=train_data[[9]]; colnames(total_acc_train_3) <- 1:128;
colnames(total_acc_train_3) <- paste("total_acc", colnames(total_acc_train_3), sep = "_")

################################################################################################################




