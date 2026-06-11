\*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/

mysql> create database Student_Information;
Query OK, 1 row affected (0.211 sec)

mysql> use student_information;
Database changed

mysql> create table student(stud_id int primary key,FirstName varchar(20) not null,LastName varchar(20) not null,PhoneNo  int not null,Address varchar(30) not null);
Query OK, 0 rows affected (0.596 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(20) | NO   |     | NULL    |       |
| LastName  | varchar(20) | NO   |     | NULL    |       |
| PhoneNo   | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.023 sec)

mysql> insert into student values(1,'Riya','Kadam',93219825,'Thane'),(2,'Aarya','Kadam',856325798,'Lodha'),(3,'Kinjal','Patel',985246354,'Mulund'),(4,'Diksha','Ghadi',854723545,'Kisan Nagar'),(5,'Nupur','Bhoir',857496321,'Kolshet');
Query OK, 5 rows affected (0.420 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+---------+-----------+----------+-----------+-------------+
| stud_id | FirstName | LastName | PhoneNo   | Address     |
+---------+-----------+----------+-----------+-------------+
|       1 | Riya      | Kadam    |  93219825 | Thane       |
|       2 | Aarya     | Kadam    | 856325798 | Lodha       |
|       3 | Kinjal    | Patel    | 985246354 | Mulund      |
|       4 | Diksha    | Ghadi    | 854723545 | Kisan Nagar |
|       5 | Nupur     | Bhoir    | 857496321 | Kolshet     |
+---------+-----------+----------+-----------+-------------+
5 rows in set (0.008 sec)

mysql> select *from student order by LastName asc;
+---------+-----------+----------+-----------+-------------+
| stud_id | FirstName | LastName | PhoneNo   | Address     |
+---------+-----------+----------+-----------+-------------+
|       5 | Nupur     | Bhoir    | 857496321 | Kolshet     |
|       4 | Diksha    | Ghadi    | 854723545 | Kisan Nagar |
|       1 | Riya      | Kadam    |  93219825 | Thane       |
|       2 | Aarya     | Kadam    | 856325798 | Lodha       |
|       3 | Kinjal    | Patel    | 985246354 | Mulund      |
+---------+-----------+----------+-----------+-------------+
5 rows in set (0.015 sec)

mysql>