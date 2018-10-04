library(zoo);
library(taRifx);
library(lubridate);
library(xts);
library(tidyquant);
library(tseries);

library(fpp);
library(dplyr);
library(corrplot);
library(car);
library(caret);

library(AppliedPredictiveModeling);
library(MASS);
library(pls);
library(gdata);
library(TTR);
library(vars);
library(lmtest);

#######################################################################
#
#                         Support Vector Machines
#
#######################################################################

###########

#Code used to see impact of cost and epsilon

###########

library(readxl);
library(ggplot2);
library(caret);
library(caTools);
library(e1071);

#load excel data
#library(readxl);
ip7 <- read_excel("Simulated_Data_10K_Final_S8.xlsx")

ip7[] <- lapply(ip7, factor);
set.seed(123)
sample = sample.split(ip7$Age, SplitRatio = .7);
trainingdata = subset(ip7, sample == TRUE);
testingdata = subset(ip7, sample == FALSE);

#support vector machine
mymodel <- svm(Retailer~., data = trainingdata , kernel = "radial");
summary(mymodel)

#confusion matrix and misclassification error
pred <- predict(mymodel, testingdata);
tab <- table(predicted = pred, actual = testingdata$Retailer);
misclassificaton <- 1 - sum(diag(tab)/sum(tab));
tab
misclassificaton

#tuning/hyperparameter optimisation for the svm
#set the random seet to 123, so the results are reproduceable 
set.seed(123); #set random seed
# use the tune function to tune the hyperparameters of the svm
tmodel <- tune(svm, Retailer~., data=trainingdata, ranges = list(epsilon=seq(0,1,0.1), cost = (1:4)));
plot(tmodel);
summary(tmodel);


###########

#Code used to see impact of gamma

###########


#load excel data

library(readxl);
library(ggplot2);
library(caret);
library(caTools);
library(e1071);

ip7 <- read_excel("Simulated_Data_10K_Final_S8.xlsx");
ip7[] <- lapply(ip7, factor);
set.seed(123);
sample = sample.split(ip7$Age, SplitRatio = 0.7);
trainingdata = subset(ip7, sample == TRUE);
testingdata = subset(ip7, sample == FALSE);

#support vector machine
mymodel <- svm(Retailer~., data = trainingdata , kernel = "radial");
summary(mymodel);

#confusion matrix and misclassification error
pred <- predict(mymodel, testingdata);
tab <- table(predicted = pred, actual = testingdata$Retailer);
misclassificaton <- 1 - sum(diag(tab)/sum(tab));
tab;
misclassificaton;

#tuning/hyperparameter optimisation for the svm
#set the random seet to 123, so the results are reproduceable 
set.seed(123); #set random seed
# use the tune function to tune the hyperparameters of the svm
tmodel <- tune(svm, Retailer~., data=trainingdata, ranges = list(gamma=seq(0,5,1)));
plot(tmodel);
summary(tmodel);