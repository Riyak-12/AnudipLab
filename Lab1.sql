\*
Create Database StudentManagementSystem
1.Create Table student
with attribute   ●StudentID (Primary Key)
 ●Name
 ●Age
 ●Address
2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table
*/
mysql>create database studentmanagementsystem;
Query OK, 0 rows affected (0.426 sec)
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| deepfaker               |
| deepfaker_db            |
| deepfakerdb             |
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
11 rows in set (0.427 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> create table student(student_Id varchar(10) Not NULL primary key,name varchar(100) Not NULL,age int Not NULL,address varchar(100) Not NULL);
Query OK, 0 rows affected (0.426 sec)

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_Id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(100) | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| address    | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.271 sec)

mysql> insert into student(student_id,name,age,address)values('s101','Riya',20,'Gulmohar Heights'),('s102','Kinjal',20,'Mithagar Road'),('s103','Diksha',20,'Kisan Nagar'),('s104','Nupur',20,'Kolshet Gaon'),('s105','diya',20,'Vartak nagar');
Query OK, 5 rows affected (0.480 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------------+--------+-----+------------------+
| student_Id | name   | age | address          |
+------------+--------+-----+------------------+
| s101       | Riya   |  20 | Gulmohar Heights |
| s102       | Kinjal |  20 | Mithagar Road    |
| s103       | Diksha |  20 | Kisan Nagar      |
| s104       | Nupur  |  20 | Kolshet Gaon     |
| s105       | diya   |  20 | Vartak nagar     |
+------------+--------+-----+------------------+
5 rows in set (0.010 sec)

mysql> create table Feedback(feedback_id varchar(100) Not NULL primary key,student_id varchar(100) Not NULL,date datetime Not NULL,Instructorname varchar(100) Not NULL,feedback varchar(100) Not NULL);
Query OK, 0 rows affected (0.751 sec)

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| feedback_id    | varchar(100) | NO   | PRI | NULL    |       |
| student_id     | varchar(100) | NO   |     | NULL    |       |
| date           | datetime     | NO   |     | NULL    |       |
| Instructorname | varchar(100) | NO   |     | NULL    |       |
| feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.152 sec)

mysql> insert into Feedback values('101','1','2026-06-08','Priti Mam','Good presentation.'),('102','2','2026-06-08','Ankita Mam','Good learning experience.'),('103','3','2026-06-08','Minakshi Mam','Well explained.'),('104','4','2026-06-08','Aniket Sir','Very informative.'),('105','5','2026-06-08','Shubham Sir','Great session.');
Query OK, 5 rows affected (0.370 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Feedback;
+-------------+------------+---------------------+----------------+---------------------------+
| feedback_id | student_id | date                | Instructorname | feedback                  |
+-------------+------------+---------------------+----------------+---------------------------+
| 101         | 1          | 2026-06-08 00:00:00 | Priti Mam      | Good presentation.        |
| 102         | 2          | 2026-06-08 00:00:00 | Ankita Mam     | Good learning experience. |
| 103         | 3          | 2026-06-08 00:00:00 | Minakshi Mam   | Well explained.           |
| 104         | 4          | 2026-06-08 00:00:00 | Aniket Sir     | Very informative.         |
| 105         | 5          | 2026-06-08 00:00:00 | Shubham Sir    | Great session.            |
+-------------+------------+---------------------+----------------+---------------------------+
5 rows in set (0.008 sec)

mysql>