The raw dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


The tidy dataset includes the following files:
=========================================

- summary_measurements.txt : which contains 2 column

1) "Mean_of_each_measurement" - The mean of all activities depends on  measurement
 (it combines all 3 dimmensions X,Y,Z)

2) "Standard_deviation_of_each_measurement" The standard deviation of all activities depends on  measurement
 (it combines all 3 dimmensions X,Y,Z)


The tidy dataset row names:
=========================================

body_acc_1 to body_acc_128 - values for body acceleration 
body_gyro_1 to body_gyro_128 - values for body angular velocity
total_acc_1 to total_acc_128 -  values for acceleration signal



