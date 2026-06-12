mysql> create database joins;
Query OK, 1 row affected (0.114 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key,department_name varchar(70) not null);
Query OK, 0 rows affected (0.650 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(70) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.834 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'FINANCE'),(4,'MARKETING');
Query OK, 4 rows affected (0.403 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | FINANCE         |
|             4 | MARKETING       |
+---------------+-----------------+
4 rows in set (0.006 sec)


mysql> create table employee(employee_id int not null primary key,employee_name varchar(70) not null, department_id int,foreign key(department_id)references department(department_id));
Query OK, 0 rows affected (0.843 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(70) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.027 sec)

mysql> insert into employee values(1,'Rohan',1),(2,'Mohan',2),(3,'Riya',1),(4,'Roshan',null),(5,'Krishna',4);
Query OK, 5 rows affected (0.395 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Rohan         |             1 |
|           2 | Mohan         |             2 |
|           3 | Riya          |             1 |
|           4 | Roshan        |          NULL |
|           5 | Krishna       |             4 |
+-------------+---------------+---------------+
5 rows in set (0.007 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| Krishna       | MARKETING       |
+---------------+-----------------+
4 rows in set (0.336 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| Roshan        | NULL            |
| Krishna       | MARKETING       |
+---------------+-----------------+
5 rows in set (0.016 sec)

mysql> select *from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Rohan         |             1 |
|           2 | Mohan         |             2 |
|           3 | Riya          |             1 |
|           4 | Roshan        |          NULL |
|           5 | Krishna       |             4 |
+-------------+---------------+---------------+
5 rows in set (0.009 sec)

mysql> select *from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | FINANCE         |
|             4 | MARKETING       |
+---------------+-----------------+
4 rows in set (0.006 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| Roshan        | NULL            |
| Krishna       | MARKETING       |
+---------------+-----------------+
5 rows in set (0.008 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | FINANCE         |
| Krishna       | MARKETING       |
+---------------+-----------------+
5 rows in set (0.008 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | MARKETING       |
| Rohan         | FINANCE         |
| Rohan         | IT              |
| Rohan         | HR              |
| Mohan         | MARKETING       |
| Mohan         | FINANCE         |
| Mohan         | IT              |
| Mohan         | HR              |
| Riya          | MARKETING       |
| Riya          | FINANCE         |
| Riya          | IT              |
| Riya          | HR              |
| Roshan        | MARKETING       |
| Roshan        | FINANCE         |
| Roshan        | IT              |
| Roshan        | HR              |
| Krishna       | MARKETING       |
| Krishna       | FINANCE         |
| Krishna       | IT              |
| Krishna       | HR              |
+---------------+-----------------+
20 rows in set (0.323 sec)

mysql>