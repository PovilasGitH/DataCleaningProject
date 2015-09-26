---
title: "CodeBook"
author: "Povilas"
date: "September 26, 2015"
---

# "Getting and Cleaning Data" course project #

There is presented sequence of actions need to clean up the data. 

The project data can be dowloaded from there: 
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

  More detailed  information can be find there:
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
 Data transformation and cleaning script run_analysis.r script performs such action:
  1.  Read files from directory named 'Data' which is saved in the same direcory and scrip run_analysis.r
  2.  Reading is executed in such way:

---
 | Source file   | Variable  | Description |
 | ------------ | --------- | ----------- |
 | "X_train.txt"|"TrData"    |             |       
 |"y_train.txt"| "TrLabel"  |             |   
 
---



This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
