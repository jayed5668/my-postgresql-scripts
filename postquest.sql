CREATE TABLE IF NOT EXISTS aiquest_data_engr_students(
    student_id INT,
    student_name VARCHAR(50) NOT NULL,
    mobile_no VARCHAR(50),
    email_id VARCHAR(50) UNIQUE NOT NULL,
    gender CHAR(1),
    enrollment_date DATE,
    student_age INT
);


INSERT INTO aiquest_data_engr_students (student_id,student_name, email_id, enrollment_date, student_age)
VALUES (103,'Smith','smith@gmail.com','2024-05-21',35);

SELECT student_name,mobile_no,email_id, enrollment_date
FROM aiquest_data_engr_students;

SELECT * FROM aiquest_data_engr_students
WHERE student_id =101;

SELECT NOW();

UPDATE aiquest_data_engr_students
SET email_id ='john.william@gmail.com'
WHERE student_id =102;


UPDATE aiquest_data_engr_students
SET student_name = 'Smith Taylor',
     email_id ='smith.taylor@gmail.com',
	 gender='M'
WHERE student_name = 'Smith';

UPDATE aiquest_data_engr_students
SET enrollment_date = '2024-11-01';

DELETE FROM aiquest_data_engr_students
WHERE student_id = 101;

SELECT * FROM aiquest_data_engr_students;


SELECT * from aiquest_data_engr_students;

DELETE FROM aiquest_data_engr_students;

SELECT * from aiquest_data_engr_students;

INSERT INTO aiquest_data_engr_students (student_id,student_name,mobile_no,email_id,gender,enrollment_date,student_age)
VALUES(101,'David','01711123456' ,'david@gmail.com','M', '2024-05-21',25);

INSERT INTO aiquest_data_engr_students 
VALUES(102,'John','01911123456','John@gmail.com','M', '2024-05-25',30);

INSERT INTO aiquest_data_engr_students(student_id,student_name,email_id,enrollment_date,student_age)
VALUES(103,'Smith','smith@gmail.com','2024-05-21',35);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (104, 'Michael Brown', '01811123456', 'michael@example.com', 'M', '2024-06-23', 21);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (105, 'Emily Davis', '01511123456', 'emily@example.com', 'F', '2024-06-24', 24);

INSERT INTO aiquest_data_engr_students(student_id,student_name,email_id,enrollment_date,student_age)
VALUES(106,'Smith','david.smith@gmail.com','2024-05-29',32);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (107, 'Robert Johnson', '01571123457', 'robert.johnson@example.com', 'M', '2024-06-20', 25);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (108, 'Robert Williams', '01351123458', 'robert.williams@example.com', 'M', '2024-06-03', 26);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (109, 'Robert Brown', '01911123459', 'robert.brown@example.com', 'M', '2024-05-25', 27);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (110, 'Sophia', '01811123461', 'sophia.robert@example.com', 'F', '2024-06-04', 23);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (111, 'Olivia', '01611123462', 'olivia.robert@example.com', 'F', '2024-06-10', 24);

INSERT INTO aiquest_data_engr_students (student_id, student_name, mobile_no, email_id, gender, enrollment_date, student_age)
VALUES (112, 'Isabella', '01911123463', 'isabella.robert@example.com', 'F', '2024-06-04', 25);


SELECT * from aiquest_data_engr_students;

SELECT student_name,email_id,enrollment_date
FROM aiquest_data_engr_students WHERE student_name = 'Smith'
AND email_id ='smith@gmail.com';


SELECT student_name, email_id, enrollment_date
FROM aiquest_data_engr_students WHERE student_name ='Smith'
OR email_id ='smith@gmail.com';


SELECT student_id, student_name, email_id, enrollment_date, gender
FROM aiquest_data_engr_students WHERE student_id IN (101,102,103,104);


SELECT student_id, student_name, email_id, enrollment_date, gender
FROM aiquest_data_engr_students WHERE student_id NOT IN (101, 102);


SELECT *
FROM aiquest_data_engr_students WHERE student_name LIKE 'Robert%';

SELECT *
FROM aiquest_data_engr_students WHERE student_name LIKE '%Robert%';



CREATE TABLE aiq_course_info (
    course_id SERIAL,
    course_name VARCHAR(100),
    course_description TEXT,
    course_duration INT, -- in hours
    course_level VARCHAR(50),
    course_instructor VARCHAR(100),
    course_fee DECIMAL(10, 2)
);

SELECT * FROM aiq_course_info;

INSERT INTO aiq_course_info (course_name, course_description, course_duration, course_level, course_instructor, course_fee)
VALUES 
    ('Introduction to Python', 'A beginner course on Python programming.', 40, 'Beginner', 'John Doe', 150.00),
    ('Advanced Python Programming', 'An advanced course covering Python internals.', 60, 'Advanced', 'Jane Smith', 300.00),
    ('Python for Data Science', 'Using Python for data analysis and visualization.', 50, 'Intermediate', 'Alice Johnson', 250.00),
    ('Python Web Development', 'Learn Python for building web applications.', 55, 'Intermediate', 'Bob Brown', 270.00),
    ('Python Scripting for Automation', 'Automate tasks using Python scripting.', 30, 'Intermediate', 'Charlie Davis', 200.00),
    ('Python with Machine Learning', 'Integrating Python with ML algorithms.', 70, 'Advanced', 'Diana Evans', 350.00),
    ('Data Analysis in Python', 'Analyzing data using Python libraries.', 45, 'Intermediate', 'Eva White', 220.00),
    ('Intro to python programming', 'Introductory course on Python basics.', 35, 'Beginner', 'George Adams', 180.00),
    ('Python for Beginners', 'A comprehensive guide for Python beginners.', 40, 'Beginner', 'Henry Thomas', 140.00),
    ('Python Programming Essentials', 'Essential concepts for Python programming.', 50, 'Beginner', 'Irene Martin', 160.00),
    ('Python and AI Fundamentals', 'Using Python to explore AI concepts.', 60, 'Advanced', 'John Doe', 330.00),
    ('Python Data Wrangling', 'Data wrangling techniques using Python.', 45, 'Intermediate', 'Jane Smith', 260.00),
    ('Python Automation Basics', 'Automating tasks with Python basics.', 35, 'Beginner', 'Karen Black', 150.00),
    ('Python for DevOps', 'Using Python in DevOps practices.', 55, 'Advanced', 'Laura Green', 310.00),
    ('Python GUI Development', 'Developing GUI applications in Python.', 50, 'Intermediate', 'Mike Hill', 270.00),
    ('Python for Data Engineering', 'Python course tailored for data engineering.', 65, 'Advanced', 'Nina Baker', 340.00),
    ('Data Visualization with Python', 'Create visualizations with Python.', 40, 'Intermediate', 'Oliver Harris', 210.00),
    ('Object-Oriented Python', 'Learn object-oriented programming in Python.', 45, 'Intermediate', 'Pauline Carter', 230.00),
    ('Python for Finance', 'Applying Python in financial analysis.', 50, 'Advanced', 'Quinn Murphy', 320.00),
    ('Python and Cloud Computing', 'Python for cloud services integration.', 60, 'Advanced', 'Rachel Cooper', 300.00);


SELECT * FROM aiq_course_info;


SELECT * 
FROM aiq_course_info WHERE course_name LIKE '%Python%';


SELECT * FROM aiquest_data_engr_students
WHERE gender <> 'M';


SELECT * FROM aiquest_data_engr_students
WHERE gender != 'M';


SELECT * FROM aiquest_data_engr_students
WHERE student_age BETWEEN 25 AND 30;


SELECT * FROM aiquest_data_engr_students
WHERE student_age >=30;


SELECT * FROM aiquest_data_engr_students
WHERE mobile_no IS NULL;


SELECT * FROM aiquest_data_engr_students
WHERE mobile_no IS NOT NULL;


SELECT * FROM aiquest_data_engr_students
ORDER BY student_name ASC;


SELECT * FROM aiquest_data_engr_students
ORDER BY enrollment_date DESC;


SELECT * FROM aiquest_data_engr_students
ORDER BY student_name ASC, enrollment_date DESC;


SELECT * FROM aiquest_data_engr_students
ORDER BY enrollment_date DESC
LIMIT 5;


CREATE TABLE aiq_data_professionals (
    data_professional_name VARCHAR(100),
    gender CHAR(1),
    job_role VARCHAR(50),
    joining_date DATE,
    monthly_salary NUMERIC(10, 2)
);

INSERT INTO aiq_data_professionals (data_professional_name, gender, job_role, joining_date, monthly_salary) VALUES 
('Alice Johnson', 'F', 'Data Engineer', '2023-01-10', 12000.00),
('Bob Smith', 'M', 'Data Scientist', '2023-02-12', 20000.00),
('Carol White', 'F', 'ML Engineer', '2023-03-14', 40000.00),
('David Brown', 'M', 'Data Analyst', '2023-04-15', 10000.00),
('Eve Davis', 'F', 'Data Engineer', '2023-05-18', 13000.00),
('Frank Wilson', 'M', 'Data Scientist', '2023-06-20', 20000.00),
('Grace Martinez', 'F', 'ML Engineer', '2023-07-22', 10000.00),
('Henry Anderson', 'M', 'Data Analyst', '2023-08-25', 25500.00),
('Ivy Thomas', 'F', 'Data Engineer', '2023-09-27', 13500.00),
('Jack Moore', 'M', 'Data Scientist', '2023-10-29', 17000.00),
('Kathy Taylor', 'F', 'ML Engineer', '2023-11-01', 35500.00),
('Leo Harris', 'M', 'Data Analyst', '2023-12-03', 14500.00),
('Mia Clark', 'F', 'Data Engineer', '2024-01-05', 15500.00),
('Nate Lewis', 'M', 'Data Scientist', '2024-02-07', 20500.00),
('Olivia Lee', 'F', 'ML Engineer', '2024-03-09', 60000.00),
('Paul Walker', 'M', 'Data Analyst', '2024-04-11', 20500.00),
('Quinn Hall', 'F', 'Data Engineer', '2024-05-13', 30500.00),
('Ryan Young', 'M', 'Data Scientist', '2024-06-15', 13500.00),
('Sophia King', 'F', 'ML Engineer', '2024-07-17', 14500.00),
('Tom Scott', 'M', 'Data Analyst', '2024-08-19', 30000.00);

SELECT * FROM aiq_data_professionals

SELECT job_role, SUM(monthly_salary) AS total_salary
FROM aiq_data_professionals GROUP BY job_role;

SELECT job_role, MIN(monthly_salary) AS minimum_salary
FROM aiq_data_professionals GROUP BY job_role;

SELECT job_role, MAX(monthly_salary) AS maximum_salary
FROM aiq_data_professionals GROUP BY job_role;


SELECT job_role, AVG(monthly_salary) AS average_salary
FROM aiq_data_professionals GROUP BY job_role;


SELECT gender, SUM(monthly_salary) AS total_salary
FROM aiq_data_professionals GROUP BY gender;

SELECT * FROM aiq_data_professionals

SELECT job_role, COUNT(*) AS number_of_professionals
FROM aiq_data_professionals GROUP BY job_role;


SELECT job_role, gender, SUM(monthly_salary) AS total_salary
FROM aiq_data_professionals GROUP BY job_role, gender;


INSERT INTO aiq_data_professionals(data_professional_name,gender,job_role, joining_date,monthly_salary) VALUES
        ('Johnson','M',' ML Engineer', '2023-01-10','30000.00')

SELECT job_role, gender, SUM(monthly_salary) AS total_salary
FROM aiq_data_professionals GROUP BY job_role, gender;

SELECT job_role, gender, COUNT(*) AS number_of_professionals
FROM aiq_data_professionals GROUP BY job_role,gender; 


SELECT job_role,
      SUM(monthly_salary) AS total_salary,
	  MIN(monthly_salary) AS minimum_salary,
	  MAX(monthly_salary) AS maximum_salary,
	  AVG(monthly_salary) AS average_salary
FROM aiq_data_professionals GROUP BY job_role;



SELECT job_role,gender,
      SUM(monthly_salary) AS total_salary,
	  MIN(monthly_salary) AS minimum_salary,
	  MAX(monthly_salary) AS maximum_salary,
	  AVG(monthly_salary) AS average_salary
FROM aiq_data_professionals GROUP BY job_role,gender;

SELECT * FROM aiq_data_professionals;


SELECT job_role, SUM(monthly_salary) AS total_salary
FROM aiq_data_professionals GROUP BY job_role
HAVING SUM(monthly_salary) > 100000;


CREATE TABLE IF NOT EXISTS  data_professionals (
    employee_name VARCHAR(100),
    job_role VARCHAR(50),
    department VARCHAR(50),
    joining_date DATE,
    gender CHAR(1)
);


CREATE TABLE  IF NOT EXISTS  salary_history (
    employee_name VARCHAR(100),
    salary NUMERIC(10, 2),
    effective_date DATE
);



INSERT INTO data_professionals (employee_name, job_role, department, joining_date, gender)
VALUES
    ('Alice Johnson', 'Data Engineer', 'Engineering', '2022-01-15', 'F'),
    ('Bob Smith', 'Data Scientist', 'Research', '2022-02-20', 'M'),
    ('Carol White', 'ML Engineer', 'Engineering', '2022-03-25', 'F'),
    ('David Brown', 'Data Analyst', 'Operations', '2022-04-30', 'M');


INSERT INTO salary_history (employee_name, salary, effective_date)
VALUES
    ('Alice Johnson', 120000.00, '2022-01-15'),
    ('Bob Smith', 150000.00, '2022-02-20'),
    ('Carol White', 180000.00, '2022-03-25'),
    ('David Brown', 110000.00, '2022-04-30');


SELECT * FROM data_professionals;



-- ASSIGNMENT 1.
-- Problem-1

-- i) Create the PRODUCT table.
CREATE TABLE Products (
     product_id SERIAL PRIMARY KEY,
	 product_name VARCHAR(50),
	 category VARCHAR(50),
	 price DECIMAL(10,2)
);

-- ii) Create the SALES table.
CREATE TABLE Sales (
    sale_id SERIAL PRIMARY KEY,
	product_id INT,
	quantity INT,
	sale_date DATE
);


-- iii) Insert sample grocery data into Products.

INSERT INTO Products (product_name, category, price) VALUES
('Milk', 'Dairy', 1.50),
('Cheese', 'Dairy', 4.00),
('Apple', 'Fruits', 0.80),
('Banana', 'Fruits', 0.50),
('Bread', 'Bakery', 2.00),
('Croissant', 'Bakery', 3.00);


-- iv) Insert the sample grocery sales data into the Sales.

INSERT INTO Sales (product_id, quantity, sale_date) VALUES
(1, 20, '2024-11-20'), 
(2, 10, '2024-11-21'), 
(3, 50, '2024-11-22'), 
(4, 40, '2024-11-23'), 
(5, 15, '2024-11-23'), 
(6, 10, '2024-11-24'); 


-- v) Calculate total sales by category.

SELECT p.category, SUM(s.quantity * p.price) AS total_sales
FROM Sales s JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category HAVING SUM(s.quantity * p.price) > 300;



-- Class-04

CREATE TABLE IF NOT EXISTS  data_professionals (
    employee_name VARCHAR(100),
    job_role VARCHAR(50),
    department VARCHAR(50),
    joining_date DATE,
    gender CHAR(1)
);




