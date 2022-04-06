# MechaCar_Statistical_Analysis-

## Background:
"A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team."
----------------

### Overview:

In order to help Jeremy with his project the following statiscal analysis tools will be used on the AutoRUS MechaCar data.  
  + Linear Regression to Predict MPG
  + Summary Statistics on Suspension Coils (using grouby() and summarize() functions)
  + T-Test on Suspension Coils
  + Design a Study Comparing the MechaCar to the Competition

## Linear Regression to Predict MPG

  + Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![linear_regression1.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/linear_regression1.png)

The intercept, vehicle length, and ground clearance are all variables that provide non-random amount of variance to the mpg values.  

  + Is the slope of the linear model considered to be zero? Why or why not?

![summary_values.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/summary_values.png)

The slope was found to be 0.7149 which indicates a strong correlation, this is known due to the value and comparing it to our correlation matrix.  

  + Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

The linear relationship cannot be determined to predict the mpg of the MechaCar as the intercept shows significant amount of variability.  

----

## Summary Statistics on Suspension Coils

  + The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![total_summary_df.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/total_summary_df.png)

By making a chart of the mean, median, variance, and standard deviation of the suspension coil’s PSI column we are able to analyze how the coils perform.  Now we can see that overall the coils perform within tolerable safety limits.  However let's make sure that all lots perform within safety standards.  

![lot_summary.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/lot_summary.png)

Upon closer inspection of the lot summaries we can see that the first two lots do in fact perform within tolerable limitations.  But when we look at lot 3 we can see that it does not, since it has a variance that is well above the set limitation of 100 PSI.  

----

## T-Tests on Suspension Coils

  + Summary of t-test performance: this is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset.  In other words, the one sample t-test is used to test the null hypthesis- "There is NO statistical difference between the observed sample mean and its presumed population mean."

![t_test_coil.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/t_test_coil.png)

Using the t-test of the summary we can set a base for comparison of each lot.  

![t_test_lot1.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/t_test_lot1.png)

Here we can see that the p-value is 1 meaning that it is not that statistically different from our main summary.  

![t_test_lot2.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/t_test_lot2.png)

In the Lot2 group we can see that it is not as close as Lot1 but is still close enough that we can safely approve it for use.  

![t_test_lot3.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/main/resources/t_test_lot3.png)

Now things get interesting, since the p-value for Lot3 is below our threshold we have to say that this lot is in fact statistically different.  

----

## Study Design: MechaCar vs Competition

If we are to truly test the MechaCar against the competition then we will need to statiscally measure its performance versus the best selling cars in the market.  By understanding the different data types we can see that Miles Per gallon and horse power are both statistics that consumers look at.  

![id_data_type.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/7756d61a2a458b3658b711cc92b7546a739eba59/resources/id_data_type.png)

Using these and other similar performance statistics like also Drivetrain we can compare the MechaCar to a competitor in an Two Sample Test, much like what we did with the suspension coil performance.  This will allow us to show that the MechaCar outperforms similar cars in its class type. 

![select_stat_test.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/7756d61a2a458b3658b711cc92b7546a739eba59/resources/select_stat_test.png)

Then using the A/B testing critieria we can show how much better the MechaCar is than its competitors.  This would also show us if we have room for improvement and if there are other models of car that perform better than the MechaCar.  

![a:b_test_crit.png](https://github.com/GrahamNeal13/MechaCar_Statistical_Analysis-/blob/7756d61a2a458b3658b711cc92b7546a739eba59/resources/a:b_test_crit.png)

Since categories like gas useage, transmission type, and horsepower are all public statistics we can use this information from competitors without having to worry about any corporate espionage threats.  And prove to the public that the MechaCar is the future of automotive transportation.  
