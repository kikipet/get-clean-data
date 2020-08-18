# Codebook

mean-sd.txt contains a data frame with 68 variables:
```
1 tBodyAccmeanX
2 tBodyAccmeanY
3 tBodyAccmeanZ
4 tBodyAccstdX
5 tBodyAccstdY
6 tBodyAccstdZ
7 tGravityAccmeanX
8 tGravityAccmeanY
9 tGravityAccmeanZ
10 tGravityAccstdX
11 tGravityAccstdY
12 tGravityAccstdZ
13 tBodyAccJerkmeanX
14 tBodyAccJerkmeanY
15 tBodyAccJerkmeanZ
16 tBodyAccJerkstdX
17 tBodyAccJerkstdY
18 tBodyAccJerkstdZ
19 tBodyGyromeanX
20 tBodyGyromeanY
21 tBodyGyromeanZ
22 tBodyGyrostdX
23 tBodyGyrostdY
24 tBodyGyrostdZ
25 tBodyGyroJerkmeanX
26 tBodyGyroJerkmeanY
27 tBodyGyroJerkmeanZ
28 tBodyGyroJerkstdX
29 tBodyGyroJerkstdY
30 tBodyGyroJerkstdZ
31 tBodyAccMagmean
32 tBodyAccMagstd
33 tGravityAccMagmean
34 tGravityAccMagstd
35 tBodyAccJerkMagmean
36 tBodyAccJerkMagstd
37 tBodyGyroMagmean
38 tBodyGyroMagstd
39 tBodyGyroJerkMagmean
40 tBodyGyroJerkMagstd
41 fBodyAccmeanX
42 fBodyAccmeanY
43 fBodyAccmeanZ
44 fBodyAccstdX
45 fBodyAccstdY
46 fBodyAccstdZ
47 fBodyAccJerkmeanX
48 fBodyAccJerkmeanY
49 fBodyAccJerkmeanZ
50 fBodyAccJerkstdX
51 fBodyAccJerkstdY
52 fBodyAccJerkstdZ
53 fBodyGyromeanX
54 fBodyGyromeanY
55 fBodyGyromeanZ
56 fBodyGyrostdX
57 fBodyGyrostdY
58 fBodyGyrostdZ
59 fBodyAccMagmean
60 fBodyAccMagstd
61 fBodyBodyAccJerkMagmean
62 fBodyBodyAccJerkMagstd
63 fBodyBodyGyroMagmean
64 fBodyBodyGyroMagstd
65 fBodyBodyGyroJerkMagmean
66 fBodyBodyGyroJerkMagstd
67 Activity
68 Subject
```
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these threedimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3axial signals in the X, Y and Z directions.
