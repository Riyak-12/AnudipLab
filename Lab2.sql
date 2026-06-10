\*
 Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
*/

mysql> create table BankAccount(account_id varchar(10) NOT NULL primary key,account_holder_name varchar(30) not null,account_balance double not null);
Query OK, 0 rows affected (0.562 sec)

mysql> insert into BankAccount values(101,'Riya',40000),(102,'Aarya',50000),(103,'Aarti',45000),(104,'Nupur',35000),(105,'Diksha',30000);
Query OK, 5 rows affected (0.067 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Riya                |           40000 |
| 102        | Aarya               |           50000 |
| 103        | Aarti               |           45000 |
| 104        | Nupur               |           35000 |
| 105        | Diksha              |           30000 |
+------------+---------------------+-----------------+
5 rows in set (0.009 sec)

mysql> select *from BankAccount where account_Balance>30000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Riya                |           40000 |
| 102        | Aarya               |           50000 |
| 103        | Aarti               |           45000 |
| 104        | Nupur               |           35000 |
+------------+---------------------+-----------------+
4 rows in set (0.009 sec)

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Riya                |           40000 |
| 102        | Aarya               |           40000 |
| 103        | Aarti               |           45000 |
| 104        | Nupur               |           35000 |
| 105        | Diksha              |           30000 |
+------------+---------------------+-----------------+
5 rows in set (0.007 sec)
