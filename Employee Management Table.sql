CREATE DATABASE employee_management;
USE employee_management;

-- departments
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) UNIQUE NOT NULL
);

-- projects
CREATE TABLE projects(
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
budget INT CHECK(budget>0)
);

-- employees
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
dept_id INT,
project_id INT,
email VARCHAR(100) UNIQUE,
FOREIGN KEY(dept_id) REFERENCES departments(dept_id),
FOREIGN KEY(project_id) REFERENCES projects(project_id)
);

-- salary
CREATE TABLE salary(
salary_id INT PRIMARY KEY,
emp_id INT,
base_salary INT CHECK(base_salary>1000),
bonus INT,
deduction INT,
net_salary INT,
FOREIGN KEY(emp_id) REFERENCES employees(emp_id)
);

-- departments values (50)
INSERT INTO departments VALUES
(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Marketing'),(5,'Sales'),
(6,'Support'),(7,'Security'),(8,'Admin'),(9,'Operations'),(10,'Logistics'),
(11,'Analytics'),(12,'Development'),(13,'Testing'),(14,'Research'),(15,'Training'),
(16,'Recruitment'),(17,'Legal'),(18,'Compliance'),(19,'Procurement'),(20,'Planning'),
(21,'Strategy'),(22,'CustomerCare'),(23,'Design'),(24,'Content'),(25,'Advertising'),
(26,'Digital'),(27,'Production'),(28,'Quality'),(29,'Maintenance'),(30,'DataScience'),
(31,'MachineLearning'),(32,'AI'),(33,'Cloud'),(34,'DevOps'),(35,'Database'),
(36,'Networking'),(37,'Infrastructure'),(38,'MobileDev'),(39,'WebDev'),(40,'UIUX'),
(41,'SecurityOps'),(42,'Platform'),(43,'Product'),(44,'Growth'),(45,'Vendor'),
(46,'International'),(47,'Regional'),(48,'Corporate'),(49,'Innovation'),(50,'BI');

-- projects values (50)
INSERT INTO projects VALUES
(1,'Project1',50000),(2,'Project2',60000),(3,'Project3',55000),(4,'Project4',52000),(5,'Project5',58000),
(6,'Project6',62000),(7,'Project7',64000),(8,'Project8',66000),(9,'Project9',68000),(10,'Project10',70000),
(11,'Project11',72000),(12,'Project12',74000),(13,'Project13',76000),(14,'Project14',78000),(15,'Project15',80000),
(16,'Project16',82000),(17,'Project17',84000),(18,'Project18',86000),(19,'Project19',88000),(20,'Project20',90000),
(21,'Project21',92000),(22,'Project22',94000),(23,'Project23',96000),(24,'Project24',98000),(25,'Project25',100000),
(26,'Project26',102000),(27,'Project27',104000),(28,'Project28',106000),(29,'Project29',108000),(30,'Project30',110000),
(31,'Project31',112000),(32,'Project32',114000),(33,'Project33',116000),(34,'Project34',118000),(35,'Project35',120000),
(36,'Project36',122000),(37,'Project37',124000),(38,'Project38',126000),(39,'Project39',128000),(40,'Project40',130000),
(41,'Project41',132000),(42,'Project42',134000),(43,'Project43',136000),(44,'Project44',138000),(45,'Project45',140000),
(46,'Project46',142000),(47,'Project47',144000),(48,'Project48',146000),(49,'Project49',148000),(50,'Project50',150000);

-- employees values (100)
INSERT INTO employees VALUES
(1,'Arun',1,1,'e1@mail.com'),
(2,'Priya',2,2,'e2@mail.com'),
(3,'Karthik',3,3,'e3@mail.com'),
(4,'Divya',4,4,'e4@mail.com'),
(5,'Rahul',5,5,'e5@mail.com'),
(6,'Ananya',6,6,'e6@mail.com'),
(7,'Vikram',7,7,'e7@mail.com'),
(8,'Sneha',8,8,'e8@mail.com'),
(9,'Rohit',9,9,'e9@mail.com'),
(10,'Pooja',10,10,'e10@mail.com'),

(11,'Ajay',11,11,'e11@mail.com'),
(12,'Neha',12,12,'e12@mail.com'),
(13,'Manoj',13,13,'e13@mail.com'),
(14,'Shreya',14,14,'e14@mail.com'),
(15,'Suresh',15,15,'e15@mail.com'),
(16,'Kavya',16,16,'e16@mail.com'),
(17,'Arjun',17,17,'e17@mail.com'),
(18,'Deepika',18,18,'e18@mail.com'),
(19,'Vivek',19,19,'e19@mail.com'),
(20,'Nisha',20,20,'e20@mail.com'),

(21,'Amit',21,21,'e21@mail.com'),
(22,'Swathi',22,22,'e22@mail.com'),
(23,'Rajesh',23,23,'e23@mail.com'),
(24,'Meera',24,24,'e24@mail.com'),
(25,'Sanjay',25,25,'e25@mail.com'),
(26,'Anjali',26,26,'e26@mail.com'),
(27,'Rakesh',27,27,'e27@mail.com'),
(28,'Priyanka',28,28,'e28@mail.com'),
(29,'Harish',29,29,'e29@mail.com'),
(30,'Sonali',30,30,'e30@mail.com'),

(31,'Varun',31,31,'e31@mail.com'),
(32,'Keerthi',32,32,'e32@mail.com'),
(33,'Gaurav',33,33,'e33@mail.com'),
(34,'Preeti',34,34,'e34@mail.com'),
(35,'Sachin',35,35,'e35@mail.com'),
(36,'Pallavi',36,36,'e36@mail.com'),
(37,'Kiran',37,37,'e37@mail.com'),
(38,'Ritu',38,38,'e38@mail.com'),
(39,'Abhishek',39,39,'e39@mail.com'),
(40,'Lakshmi',40,40,'e40@mail.com'),

(41,'Ashwin',41,41,'e41@mail.com'),
(42,'Riya',42,42,'e42@mail.com'),
(43,'Tarun',43,43,'e43@mail.com'),
(44,'Monika',44,44,'e44@mail.com'),
(45,'Pradeep',45,45,'e45@mail.com'),
(46,'Shruti',46,46,'e46@mail.com'),
(47,'Yash',47,47,'e47@mail.com'),
(48,'Komal',48,48,'e48@mail.com'),
(49,'Naveen',49,49,'e49@mail.com'),
(50,'Shivani',50,50,'e50@mail.com'),

(51,'Akash',1,1,'e51@mail.com'),
(52,'Simran',2,2,'e52@mail.com'),
(53,'Nitin',3,3,'e53@mail.com'),
(54,'Radhika',4,4,'e54@mail.com'),
(55,'Ankit',5,5,'e55@mail.com'),
(56,'Snehal',6,6,'e56@mail.com'),
(57,'Rohan',7,7,'e57@mail.com'),
(58,'Pavitra',8,8,'e58@mail.com'),
(59,'Mahesh',9,9,'e59@mail.com'),
(60,'Jyoti',10,10,'e60@mail.com'),

(61,'Vishal',11,11,'e61@mail.com'),
(62,'Kajal',12,12,'e62@mail.com'),
(63,'Ayush',13,13,'e63@mail.com'),
(64,'Sapna',14,14,'e64@mail.com'),
(65,'Kunal',15,15,'e65@mail.com'),
(66,'Bhavana',16,16,'e66@mail.com'),
(67,'Prakash',17,17,'e67@mail.com'),
(68,'Tanvi',18,18,'e68@mail.com'),
(69,'Aditya',19,19,'e69@mail.com'),
(70,'Divyansh',20,20,'e70@mail.com'),

(71,'Manisha',21,21,'e71@mail.com'),
(72,'Harsha',22,22,'e72@mail.com'),
(73,'Ritik',23,23,'e73@mail.com'),
(74,'Gayathri',24,24,'e74@mail.com'),
(75,'Vinay',25,25,'e75@mail.com'),
(76,'Reshma',26,26,'e76@mail.com'),
(77,'Rajat',27,27,'e77@mail.com'),
(78,'Sagar',28,28,'e78@mail.com'),
(79,'Megha',29,29,'e79@mail.com'),
(80,'Lokesh',30,30,'e80@mail.com'),

(81,'Nikhil',31,31,'e81@mail.com'),
(82,'Anusha',32,32,'e82@mail.com'),
(83,'Ravi',33,33,'e83@mail.com'),
(84,'Sindhu',34,34,'e84@mail.com'),
(85,'Abhay',35,35,'e85@mail.com'),
(86,'Tejas',36,36,'e86@mail.com'),
(87,'Lavanya',37,37,'e87@mail.com'),
(88,'Suraj',38,38,'e88@mail.com'),
(89,'Geetha',39,39,'e89@mail.com'),
(90,'Pranav',40,40,'e90@mail.com'),

(91,'Swati',41,41,'e91@mail.com'),
(92,'Dev',42,42,'e92@mail.com'),
(93,'Aman',43,43,'e93@mail.com'),
(94,'Chitra',44,44,'e94@mail.com'),
(95,'Ramesh',45,45,'e95@mail.com'),
(96,'Nandini',46,46,'e96@mail.com'),
(97,'Aravind',47,47,'e97@mail.com'),
(98,'Varsha',48,48,'e98@mail.com'),
(99,'Darshan',49,49,'e99@mail.com'),
(100,'Anupama',50,50,'e100@mail.com');

-- salary values 
INSERT INTO salary VALUES
(1,1,35000,2000,500,36500),
(2,2,36000,2000,500,37500),
(3,3,37000,2000,500,38500),
(4,4,38000,2000,500,39500),
(5,5,39000,2000,500,40500),
(6,6,40000,2000,500,41500),
(7,7,41000,2000,500,42500),
(8,8,42000,2000,500,43500),
(9,9,43000,2000,500,44500),
(10,10,44000,2000,500,45500),

(11,11,45000,2000,500,46500),
(12,12,46000,2000,500,47500),
(13,13,47000,2000,500,48500),
(14,14,48000,2000,500,49500),
(15,15,49000,2000,500,50500),
(16,16,50000,2000,500,51500),
(17,17,51000,2000,500,52500),
(18,18,52000,2000,500,53500),
(19,19,53000,2000,500,54500),
(20,20,54000,2000,500,55500),

(21,21,35000,2000,500,36500),
(22,22,36000,2000,500,37500),
(23,23,37000,2000,500,38500),
(24,24,38000,2000,500,39500),
(25,25,39000,2000,500,40500),
(26,26,40000,2000,500,41500),
(27,27,41000,2000,500,42500),
(28,28,42000,2000,500,43500),
(29,29,43000,2000,500,44500),
(30,30,44000,2000,500,45500),

(31,31,45000,2000,500,46500),
(32,32,46000,2000,500,47500),
(33,33,47000,2000,500,48500),
(34,34,48000,2000,500,49500),
(35,35,49000,2000,500,50500),
(36,36,50000,2000,500,51500),
(37,37,51000,2000,500,52500),
(38,38,52000,2000,500,53500),
(39,39,53000,2000,500,54500),
(40,40,54000,2000,500,55500),

(41,41,35000,2000,500,36500),
(42,42,36000,2000,500,37500),
(43,43,37000,2000,500,38500),
(44,44,38000,2000,500,39500),
(45,45,39000,2000,500,40500),
(46,46,40000,2000,500,41500),
(47,47,41000,2000,500,42500),
(48,48,42000,2000,500,43500),
(49,49,43000,2000,500,44500),
(50,50,44000,2000,500,45500),

(51,51,45000,2000,500,46500),
(52,52,46000,2000,500,47500),
(53,53,47000,2000,500,48500),
(54,54,48000,2000,500,49500),
(55,55,49000,2000,500,50500),
(56,56,50000,2000,500,51500),
(57,57,51000,2000,500,52500),
(58,58,52000,2000,500,53500),
(59,59,53000,2000,500,54500),
(60,60,54000,2000,500,55500),

(61,61,35000,2000,500,36500),
(62,62,36000,2000,500,37500),
(63,63,37000,2000,500,38500),
(64,64,38000,2000,500,39500),
(65,65,39000,2000,500,40500),
(66,66,40000,2000,500,41500),
(67,67,41000,2000,500,42500),
(68,68,42000,2000,500,43500),
(69,69,43000,2000,500,44500),
(70,70,44000,2000,500,45500),

(71,71,45000,2000,500,46500),
(72,72,46000,2000,500,47500),
(73,73,47000,2000,500,48500),
(74,74,48000,2000,500,49500),
(75,75,49000,2000,500,50500),
(76,76,50000,2000,500,51500),
(77,77,51000,2000,500,52500),
(78,78,52000,2000,500,53500),
(79,79,53000,2000,500,54500),
(80,80,54000,2000,500,55500),

(81,81,35000,2000,500,36500),
(82,82,36000,2000,500,37500),
(83,83,37000,2000,500,38500),
(84,84,38000,2000,500,39500),
(85,85,39000,2000,500,40500),
(86,86,40000,2000,500,41500),
(87,87,41000,2000,500,42500),
(88,88,42000,2000,500,43500),
(89,89,43000,2000,500,44500),
(90,90,44000,2000,500,45500),

(91,91,45000,2000,500,46500),
(92,92,46000,2000,500,47500),
(93,93,47000,2000,500,48500),
(94,94,48000,2000,500,49500),
(95,95,49000,2000,500,50500),
(96,96,50000,2000,500,51500),
(97,97,51000,2000,500,52500),
(98,98,52000,2000,500,53500),
(99,99,53000,2000,500,54500),
(100,100,54000,2000,500,55500);

-- distinct
SELECT DISTINCT dept_id
FROM employees;

-- IN function
SELECT * FROM employees
WHERE dept_id IN (1,2,3);

-- limit
SELECT * FROM employees
LIMIT 10;

-- limit and offset
SELECT * FROM employees
LIMIT 8 offset 3;

-- aggregate functions
SELECT MIN(base_salary),MAX(base_salary),AVG(base_salary),COUNT(*) FROM salary;

-- where
SELECT * FROM salary WHERE base_salary>40000;

-- order by
SELECT * FROM salary ORDER BY base_salary DESC;

-- group by
SELECT dept_id,COUNT(*) FROM employees GROUP BY dept_id;

-- having
SELECT dept_id,COUNT(*) FROM employees GROUP BY dept_id HAVING COUNT(*)>1;

-- inner join
SELECT e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id=d.dept_id;

-- left join
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id=d.dept_id;

-- cross join
SELECT e.emp_name,d.dept_name
FROM employees e
CROSS JOIN departments d;

-- window function
SELECT emp_id,base_salary,
ROW_NUMBER() OVER(ORDER BY base_salary DESC) salary_rank
FROM salary;

-- index
CREATE INDEX idx_salary ON salary(base_salary);

-- audit table
CREATE TABLE salary_audit(
emp_id INT,
old_salary INT,
new_salary INT
);

-- trigger
DELIMITER //
CREATE TRIGGER salary_update
AFTER UPDATE ON salary
FOR EACH ROW
BEGIN
INSERT INTO salary_audit VALUES(OLD.emp_id,OLD.base_salary,NEW.base_salary);
END//
DELIMITER ;

-- view
CREATE VIEW employee_salary_view AS
SELECT e.emp_name, d.dept_name, s.base_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salary s ON e.emp_id = s.emp_id;

SELECT * FROM employee_salary_view;

