###

##### reading for test files
sub_test=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt") ### contains id`s
colnames(sub_test) <- 'id'
#id
#id_test=t(unique(sub_test))
## sub_test id`s 2 4 9 10 12 13 18 20 24
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
### merge body gyro  test
body_gyro_test = merge(body_gyro_test_1, body_gyro_test_2, 
                      by.x = names(body_gyro_test_1),
                      by.y = names(body_gyro_test_2),
                      all = TRUE)
body_gyro_test = merge(body_gyro_test, body_gyro_test_3, 
                      by.x = names(body_gyro_test),
                      by.y = names(body_gyro_test_3),
                      all = TRUE)

### merge body accu  test
body_acc_test = merge(body_acc_test_1, body_acc_test_2, 
                       by.x = names(body_acc_test_1),
                       by.y = names(body_acc_test_2),
                       all = TRUE)
body_acc_test = merge(body_acc_test, body_acc_test_3, 
                      by.x = names(body_acc_test),
                      by.y = names(body_acc_test_3),
                      all = TRUE)

### merge acc test
total_acc_test = merge(total_acc_test_1, total_acc_test_2, 
                       by.x = names(total_acc_test_1),
                       by.y = names(total_acc_test_2),
                       all = TRUE)
total_acc_test = merge(total_acc_test, total_acc_test_3, 
                       by.x = names(total_acc_test),
                       by.y = names(total_acc_test_3),
                       all = TRUE)

####
## test dataframe
test_total = data.frame(sub_test,
                        body_acc_test,
                        body_gyro_test,
                        total_acc_test)
############
############
############
############
############
############

##### reading for train files
sub_train=read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt") ### contains id`s
colnames(sub_train) <- 'id'
#id
#id_train=t(unique(sub_train))
## sub_train id`s 1 3 5 6 7 8 11 14 15 16 17 19 21 22 23 25 26 27 28 29 30
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

### merge body gyro train
body_gyro_train = merge(body_gyro_train_1, body_gyro_train_2, 
                       by.x = names(body_gyro_train_1),
                       by.y = names(body_gyro_train_2),
                       all = TRUE)
body_gyro_train = merge(body_gyro_train, body_gyro_train_3, 
                       by.x = names(body_gyro_train),
                       by.y = names(body_gyro_train_3),
                       all = TRUE)

### merge body accu train
body_acc_train = merge(body_acc_train_1, body_acc_train_2, 
                      by.x = names(body_acc_train_1),
                      by.y = names(body_acc_train_2),
                      all = TRUE)
body_acc_train = merge(body_acc_train, body_acc_train_3, 
                      by.x = names(body_acc_train),
                      by.y = names(body_acc_train_3),
                      all = TRUE)

### merge acc train
total_acc_train = merge(total_acc_train_1, total_acc_train_2, 
                       by.x = names(total_acc_train_1),
                       by.y = names(total_acc_train_2),
                       all = TRUE)
total_acc_train = merge(total_acc_train, total_acc_train_3, 
                       by.x = names(total_acc_train),
                       by.y = names(total_acc_train_3),
                       all = TRUE)

## train dataframe
train_total = data.frame(sub_train,
                         body_acc_train,
                         body_gyro_train,
                         total_acc_train)
################################################################################################################

### test if names are the same:
identical(names(train_total),names(test_total))
### if it is True then it is ok

### Merging data
big_data = merge(train_total, test_total, 
                 by.x = names(train_total),
                 by.y = names(test_total), all =TRUE)
big_data_name = 'big_data.txt'

### Saving to .csv big_data
## write.table(big_data, file = big_data_name, row.name=FALSE)
### mean for all measurements
mean_big = sapply(big_data[,2:length(big_data)]
          ,FUN = mean)
### standard deviation for all measurements
sd_big = sapply(big_data[,2:length(big_data)]
                ,FUN = sd)
### creates a new data with only means an sd`s
summ_data = data.frame(mean_big, sd_big)

## setting new row names:
## setting new col names
colnames(summ_data) = c('Mean_of_each_measurement',
                        'Standard_deviation_of_each_measurement')

### Saving to .csv
summ_data_name = 'summary_measurements.txt'
write.table(summ_data, file = summ_data_name, row.name=FALSE)


