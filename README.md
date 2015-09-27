#README

The repository contains the following files: README.md, CodeBook.md, and run_analysis.R.

**1. CodeBook.md**

This file describes the dataset and variables. See this file for a detailed description of the project objectives also.

**run_analysis.R**

This is a script written in the R programming language.

The purpose of the script is to create a tidy dataset, and generate a summary of the source data.

To use the script, you need to follow these instructions:

1. You need to have R installed on your machine (This run_analysis.R script was tested with R Version 3.2.1 on a mac OS X machine)
2. Dowload the following dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Extract the .zip file (You should now have a directory called "UCI HAR Dataset")
3. Place the run_analysis.R script in the same directory that contains the "UCI HAR Dataset" folder.
4. Open your favourite R programming console or IDE (such as RStudio)
5. Type the following command
```
source("run_analysis.R")
```