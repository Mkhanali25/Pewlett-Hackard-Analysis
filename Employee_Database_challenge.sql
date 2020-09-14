SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
		Titles.title,
		Titles.from_date,
		Titles.to_date
INTO new_table
FROM employees 
INNER JOIN titles
ON employees.emp_no = Titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM new_table
ORDER BY new_table.emp_no ASC, to_date DESC;

SELECT COUNT(title), title
INTO retiring_table
FROM unique_titles
GROUP BY unique_titles.title 
ORDER BY count DESC;

SELECT DISTINCT ON (e.emp_no)
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	tt.title
-- INTO re_table
FROM employees as e
Right JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
Right JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


