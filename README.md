# Pewlett-Hackard_Analysis

# Overview of Analysis
This analysis allowed me to analyze the employee data of Hewlett_Packard by using sql to analyze a large amount of data. The analysis was to demonstrate to the manager the impact
of the upcoming retirements would have on the company--which will be significant.

## Results of Analysis
From the analysis we determined that there were over 300,024 employees in total by filtering by birthday we determined that there were over 90,399 employees that are eligibible for retirement. This was determined by extracting the data by birthday and then eliminating the duplicates which is found in the unique_titles file. This is a significant number of retiring employees so I then look to determine which employees were eligible for retirement by title. This would then help the organization know what their recruitment needs will be.  By using completing more analysis it was determined that that over 43,000 engineers will be retiring (regular and senior) and over 1700 engineering assistants. Additionally, over 40,000 staff and senior staff are also eligible.  Suprisingly, however, only 2 managers are eligible. Based on these numbers the organization is facing a significant reduction in force for some of its most skilled employees.

To help to support the upcoming retirements we also created a file to attempt create a mentoring program over 1900 employees are eligible for mentoring over 480 of these employees are engineers which doesn't completely offset the retiring engineers but does help (see mentorship_employees_bytitle). Although there are not enough employees to replace the retirement-eligible employees there is however more than enough employees to mentor.
## Summary
As the analysis determined nearly 30% of the staff are eligible for retirement. This would have a significant impact on the organization particularly since many of this staff are engineers which is highly skilled. There is also an equal amount of non engineering staff and senior staff also eligible.  Luckily to prepare for this upcoming tsunami there are a number of employees who are eligible for mentorship program. To determine this I created another table named mentorship_employees_bytitle to retrieve the account by title.  
