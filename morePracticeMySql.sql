USE employees;

#what are the top three most common job titles?
SELECT title,
       COUNT(title) AS Num_Of_Title
FROM titles
GROUP BY title
ORDER BY Num_Of_Title DESC
LIMIT 3;

# what is the lowest employee number for the first senior engineers in the company?
SELECT emp_no AS lowest_EE_Number
FROM titles
WHERE title = 'Senior Engineer'
ORDER BY emp_no
LIMIT 1;

# what is the most common ‘from date’ for job titles? for staff only?
SELECT from_date,
       title,
       COUNT(from_date) AS titles_With_From_Date
FROM titles
WHERE title = 'staff'
GROUP BY from_date
ORDER BY COUNT(from_date) DESC
LIMIT 5;

# what is the highest employee number for an engineer?
SELECT emp_no AS Highest_Employee_Number,
       title
FROM titles
WHERE title = 'engineer'
ORDER BY emp_no DESC
LIMIT 1;


# what are the names of the 10 most recently hired females in the company? the first 10?
SELECT CONCAT(last_name, ' ', first_name) AS full_Name,
       gender,
       hire_date
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10;

# what is the most common birthday?
SELECT birth_date        AS Most_Common_Birthdays,
       COUNT(birth_date) AS Num_Of_People
FROM employees
GROUP BY birth_date
ORDER BY Num_Of_People DESC
LIMIT 1;

# what is the most common female birthday? male?
SELECT birth_date        AS Most_Common_Female_Birthday,
       COUNT(birth_date) AS Num_Of_People
FROM employees
WHERE gender = 'F'
GROUP BY birth_date
ORDER BY Num_Of_People DESC
LIMIT 1;

# what is the most common hire date for female and male employees?
SELECT hire_date           AS Most_Common_Hire_Date_For_Both_MandF,
       COUNT(hire_date)    AS Num_Of_Hires,
       SUM(gender = 'M') AS Males,
       SUM(gender = 'F') AS Females
FROM employees
GROUP BY hire_date
ORDER BY Num_Of_Hires DESC
LIMIT 10;

# what is the longest last name of someone born on March 8, 1952?
