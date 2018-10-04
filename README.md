# A customer classification tool written in R for Dixons Carphone customers searching for an iPhone 7 and Samsung Galaxy S8

Code written as part of a group project as part of MSc Business Analytics course. Group members:

- [1) Olivier Kraaijeveld](https://www.linkedin.com/in/olivier-kraaijeveld-a6851ba4/)
- [2) Nandini Tyagi](https://www.linkedin.com/in/nandinityagi/)
- [3) I-Ting Wu](https://www.linkedin.com/in/i-ting-wu-7b8594132/) 

## Overview

- Designed binary and multi-classification models to predict whether a customer will visit the website of Carphone Warehouse or one of  its competitors,  based  on  5  demographic  attributes  of  a  prospective customer.  
- Multiple input parameters  were  adjusted  to  optimise models and 3 evaluation  metrics were primarily  used  to  assess  each  model's  performance:
   - Misclassification  Rate
   - Accuracy Rate 
   - Area Under the Curve (AUC). 
   
## Process:

1) **Simulate additional data**
   - Real data obtained from Audience View (Hitwise) - demographic breakdown by website visits
   - Additional data simulated in the same ratios
2) **Naive Bayes**
3) **Support Vector Machine**

## Results

- Multi-classification models performed poorly, due to the dominance of Amazon attractic traffic for both the iPhone 7 and Samsung Galaxy S8 
- Binary models were also built and tested
   - Involved amending the simulated datasets for each handset, such  that all retailers, other than Carphone Warehouse, were set to ‘other’
   - Binary models provided an improvement to the multi-classification models:
      - Lower Misclassification Rate
      - Higher Accuracy Rate
      - Higher AUC. 
   - It was found that Amazon’s dominance wasevident across the both handsets and that no classifier constructed was able to classify which retailer a customers would visit, solely based on their demographic attributes.





