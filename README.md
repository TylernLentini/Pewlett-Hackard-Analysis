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

We can use a query to count the number of emp_no in a table that returns the number of current employees filtered by birth_date and start_date
![current_employees_retiring_table](https://user-images.githubusercontent.com/84756166/127048464-a7318e7c-894d-4ea6-971b-414589742070.png)

"SELECT COUNT(emp_no)
FROM current_emp_ret;" 
 - This piece of sql code is used to return the count 

54,722 roles will need to be filled. This data is based on the current employees who are of retirement age, with duplicate titles removed. 

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

SELECT COUNT(emp_no)
From mentorship_eligibility;

When we do a count of the emp_no in the mentorship_eligibility query the total is 1549. At this rate each mentor would have to take on about 35 mentees in order to train enough employees to fill the current number of positions. This does not take into account any future growth. 

However! Mentorship Eligibility parameters as defined by the challenge only include those born BETWEEN '1965-01-01' AND '1965-12-31'

If we expand the parameters for those who re eligible to be a mentor we may have a different result.
I expanded the mentor_eligibility query to include current employees born BETWEEN '1960-01-01' AND '1969-12-31'.

When we count the number of employees eligible on the new Mentorship_Capacity table: 

![Mentorship_capacity](https://user-images.githubusercontent.com/84756166/127049895-d8d9204d-0913-4309-8514-1179e75d2668.png)

The new total of available Mentors is 93,756! Now that's a much more manageable cohort.




