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
#                              Simulating the data
#
#######################################################################

library(tidyverse) # Required library ot run Tidyverse
set.seed(315) # This create the same data set each run
n.size <- 3463 # Specific number of observations made (based on the probabilites of the actual data e.g. 0.2922 of customers went to CW in 
# data extracted from Hitwise. This number changes for each retailer.

Apple <- tibble(
  IncomeGroup = sample(c('<?10000', '?10000-?14999', '?15000-?19999', '?20000-?29999', '?30000-?39999', '?40000-?49999', 
                         '?50000-?59999', '?60000-?69999', '?70000-?99999', '?100000+'), size = n.size, 
                       prob = c(0.267358023016478, 0.166194131073246, 0.141290714023054, 0.28156566021802, 0.13610511785171, 
                                0.0777689781918101, 0.0342956194999574, 0.015213557947529, 0.0106148679281936, 0.0025308109528019), replace = TRUE),
  
  age = sample(c('18-24','25-34','35-44','45-54','55+'), size = n.size, prob = c(0.195881146137745, 0.219780171455125, 
                                                                                 0.208349955576096, 0.180076056482289, 0.195912670350532), replace = TRUE),
  
  sex = sample (c('Male', 'Female'), size = n.size, prob = c(0.550849101063351, 0.449150898934995), replace = TRUE),
  
  region = sample(c('Yorkshire', 'West-Midlands', 'Northern-Ireland', 'North-East', 'South-West', 'Scotland',
                    'London', 'Wales', 'North West', 'South East', 'East', 'East Midlands'), size = n.size, 
                  prob = c(0.0762547636805164, 0.0993039602889081, 0.0229535109373697, 0.0301930700243128, 0.067562563644706, 
                           0.0659140861010843, 0.15760606959337, 0.0432299523082554, 0.126846600199788, 0.146388586744844, 0.0879064056803375, 
                           0.075840430798295), replace = TRUE),
  employment = sample(c('Permanent-Full-time-Employment', 'Student-Or-Internship', 'Permanent-Part-time-Employment', 'Retired', 
                        'Unpaid-Employment', 'House-Wife-Or', 'Self-employed-.-Freelance', 'Temporary Work', 'Unable-to-Work', 'Without-Work'), 
                      size = n.size, prob = c(0.3630944905414, 0.0775197293922285, 0.104163334390019, 0.174273392996494, 0.0225034075774653, 
                                              0.0694197819797995, 0.0709460000406448, 0.00669374717325238, 0.0386049946782103, 0.0727811212322728), replace = TRUE)
)

# export file to temp
library(writexl)
tempfile <- write_xlsx(Apple)