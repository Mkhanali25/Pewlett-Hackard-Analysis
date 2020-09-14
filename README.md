# Pewlett-Hackard-Analysis
## OVERVIEW 
In this challenge we were tasked with anyalzing data for Pewlett-Hackard to determine how many of their employees were retiring. After running our analysis and finding our results the next step was to see how many people can participate in the mentorship program. The way we got all of these results was by using sql to create data tables and filter our data for specific categories. By doing that we were able to grab our data tables and write our analysis.

## RESULTS
After concluding our queries and retrieving our tables we can finally conclude how many employees were retiring and which employees are eligible for the mentorship program. There were a total of 4 tables that we created to filter our data and retrieve the results required:
1. The first table that we created had all the employees that were about to retire based on their titles. This caused skewed results because some employees had shifted positions thus they were counted multiple times. To prevent this we had to filter out the duplicate values so that our data could be more accurate.
1. After creating the first table and realizing the data is skewed we filtered that data so that we can remove those values. We did this by creating another table that kept only the most recent title of each employee. This table provided us a list of all those employees without the duplicate values.
1. Now we had to create the final table which would show us how many employees were retiring and the titles that they held. With this table we can finally see who is retiring and what position they held.
1. Our final step required us to do a lot of joins from the previous tables that we had created. In doing this we figured out which employees were eligible for the mentorship program.

## SUMMARY
After receiving our results we can see that the amount of people that are retiring from Pewlett Hackard is a significant amount. It is to the point where they have to act immediately to control the amount of people leaving or they could face a temporary shutdown. We can see this from the retirement_info table that we created; the table shows exactly how many people are expected to go. To make matters worse the amount of people that are qualified to mentor the incoming groups are minuscule in number (10). Pewlett Hackard is in big trouble, the way that they can stay ahead of this problem is to outsource the mentorship program to a company that has the manpower to complete this task. Otherwise the amount of loss that they will suffer from being shutdown is far greater than the amount they have to give for outsourcing the mentorship program. 



