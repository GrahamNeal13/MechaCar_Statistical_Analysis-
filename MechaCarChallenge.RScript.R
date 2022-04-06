# Deliverable 1
library(dplyr) #import dplyr library

mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read mpg data file into R Environment

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df) #perform linear regression using lm() with all six variables

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)) #use summary() to determine the p-value and the r-squared value
        
suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #read suspension coil data into R Environment

total_summary <- summarize(suspension, mean(PSI),median(PSI),var(PSI),sd(PSI)) #use summarize() to get the mean, median, variance, and SD of PSI column

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI),sd(PSI), .groups = 'keep') # create lot_summary using groub_by() and summarize()

t.test(suspension$PSI, mu=1500)

lot1 <- subset(suspension, Manufacturing_Lot == "Lot1") # create subset to perform t-test on lot 1
t.test((lot1$PSI), mu=1500) # t-test for lot 1

lot2 <- subset(suspension, Manufacturing_Lot == "Lot2") # create subset to perform t-test on lot 2
t.test((lot2$PSI), mu=1500) # t-test for lot 2 

lot3 <- subset(suspension, Manufacturing_Lot == "Lot3") # create subset to perform t-test on lot 3
t.test((lot3$PSI), mu=1500) # t-test for lot 3
