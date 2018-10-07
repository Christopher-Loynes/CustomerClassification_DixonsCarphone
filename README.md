# A customer classification tool written in R using real data

Code written as part of a group project for the MSc Business Analytics course. Group members:

- [1) Nandini Tyagi](https://www.linkedin.com/in/nandinityagi/)
- [2) I-Ting Wu](https://www.linkedin.com/in/i-ting-wu-7b8594132/) 

The results were presented back to _Dixons Carphone_, compared against _Apple_ and _Samsung_.

## Overview

- Designed binary and multi-classification models to predict whether a customer searching for an _iPhone 7_ or _Samsung Galaxy S8_ will visit the website of _Dixons Carphone_ or one of its competitors (_Amazon_ or _Samsung_), based on 5 demographic attributes of a prospective customer:
   - Annual income
   - Age
   - Sex
   - Region
   - Employment type
   
- Multiple input parameters were adjusted to optimise models and 3 evaluation metrics were primarily used to assess each model's performance:
   - Misclassification  Rate
   - Accuracy Rate 
   - Area Under the Curve (AUC)
   
## Process:

1) **Simulate additional data**
   - Real data obtained from [Audience View](https://audience-view.com/#/) 
      - Demographic breakdown of users who have searched for an _iPhone 7_ or _Samsung Galaxy S8_
   - Additional data simulated in the same ratios as the original data taken from _Audience View_
   
2) **Classify potential customers using a _Naive Bayes_ model**
   
3) **Classify potential customers using a _Support Vector Classifier (SVC)_ model**

## Results

- Multi-classification models performed poorly, due to the dominance of _Amazon_ attracting traffic for both the _iPhone 7_ and _Samsung Galaxy S8_ 

- Binary models were also built and tested
   - Involved amending the simulated datasets for each handset, such that all retailers, other than _Dixons Carphone_, were set to ‘other’
   
   - Binary models provided an improvement to the multi-classification models:
      - Lower Misclassification Rate
      - Higher Accuracy Rate
      - Higher AUC
      
   - _Amazon’s_ dominance was evident across both handsets 
   
## Resources

- [Code](https://github.com/Christopher-Loynes/CustomerClassification_DixonsCarphone/wiki/Code)
- [Data](https://github.com/Christopher-Loynes/CustomerClassification_DixonsCarphone/wiki/Data)
   - Data not included in the repository due to privacy agreement 





