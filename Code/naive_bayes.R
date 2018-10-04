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
#                              Naive Bayes
#
#######################################################################


# calculate the time
ptm <- proc.time()

# read the data
library(caTools)
library(e1071)
library(caret)
library(readxl)
S8 <- read_excel("Simulated_Data_10K_Final_S8.xlsx")
View(S8)
summary(S8)

# convert the columns into factors
S8[] <- lapply(S8, factor)

# Set Seed so that same sample can be reproduced in future also
set.seed(123)

# Now Selecting 70% of data as sample from total 'n' rows of the data  
sample = sample.split(S8$Sex, SplitRatio = .7)
train = subset(S8, sample == TRUE)
test  = subset(S8, sample == FALSE)

# build the Naive Bayes Classifier
nB_model <- naiveBayes(Retailer ~ ., data = train)
nB_model

# Predict from texting data
pred <- predict(nB_model, test, type="class")
tab <- table(pred)

# make the confusion matrix
confusionMatrix(pred, test$Retailer)

# change the data into numerical
changenumber <- ifelse(pred=="Carphone Warehouse",1,0)
change <- ifelse(test$Retailer=="Carphone Warehouse",1,0)

# plot ROC curve
pr.naive <- prediction(changenumber, change)
prf.naive <- performance(pr.naive, measure="tpr", x.measure = "fpr")
plot(prf.naive)
abline(a=0,b=1, lwd=2, lty=2,col="blue")

# calculate AUC value
auc.naive <- performance(pr.naive, measure="auc")
auc.naive <- auc.naive@y.values[[1]]
auc.naive
