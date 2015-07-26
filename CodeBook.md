# Code Book for Analysis R file
## By Miguel Ceballos

1) headers for all variables were red from "features.txt" file

2) Train & Test Set were red as table.

3) colnames were assigned from headers matrix.

4) Train & Test set were joined using rbind.

5) Subjects were loaded from "subject_train.txt" & "subject_test.txt"

6) Subjects names were joined using rbind into allSubjects data set

7) jusMean data set is a subset that collect all mean measurements

8) justSTD data set is a subset that collect all standard deviation measurements

9) allSubjects, justMean and justSTD were joined using cbind into TIDYData data set

10) TIDYData data set was writing out into a file called "tidyData.txt".
