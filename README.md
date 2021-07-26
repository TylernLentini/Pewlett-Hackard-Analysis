# Pewlett-Hackard-Analysis
# "THE SILVER TSUNAMI"

## OVERVIEW

In this module I explored databases using SQL. 
A company, Pewlett-Hackard, is anticipating what has been referred to as, "The Silver Tsunami", or the mass ritrement of the 
Baby-Boomer generation. Pewlett-Hackard, PH, is preparing for what the future retirements mean for the company. My role is to help create a database using sql and use said database to answer questions about PH's workforce utilizing queries. 

In this new analysis I will write queries to find the number of retiring employees by title and identify the employees eligible for the mentorship program.
### GOALS

* Design an ERD that will apply to the data.
* Create and use a SQL database.
* Import and export large CSV datasets into pgAdmin.
* Practice using different joins to create new tables in pgAdmin.
* Write basic- to intermediate-level SQL statements.


## RESULTS

### CHALLENGE 
Find the number of retiring employees by title AND Find the employees eligible for the mentorship program.
* First, I visualized and stored a table  of retiring employees by title.
![Retirement_titles_table](https://user-images.githubusercontent.com/84756166/127044020-d50871cc-623e-4366-aaca-e2426a80f0b7.png)

* Then, I filtered the data to show only the most recent positions held by the employees.
![unique_titles](https://user-images.githubusercontent.com/84756166/127044066-840e8d91-4603-4f05-8996-e771f8f45002.png)


* Next, I took a count of the number of employees retiring from each title. This table clearly communicates that titles like Senior Engineer are going to need to be heavily staffed.  
![retiring_titles_count](https://user-images.githubusercontent.com/84756166/127044104-54e21ef5-14f8-4bda-ac4e-1c013e3d7543.png)


* Lastly, I created the mentorship eligibility table. This table shows employees elgible for part-time mentorship based on their age and current employment status. 
![Mentorship_eligibility_table](https://user-images.githubusercontent.com/84756166/127044143-1bae86a8-7cde-4c28-9e1c-695f034560cd.png)



## SUMMARY

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard   employees?
