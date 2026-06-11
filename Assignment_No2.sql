mysql> use e_commerce;
Database changed
mysql> select *from employee_details;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
|         104 | Dixit Shah     |          30000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
5 rows in set (0.182 sec)

mysql> select *from employee_details limit 3;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
+-------------+----------------+----------------+
3 rows in set (0.009 sec)

mysql> select *from employee_details limit 2;
+-------------+--------------+----------------+
| employee_id | employeeName | employeeSalary |
+-------------+--------------+----------------+
|         101 | Aniket Kadam |          60000 |
|         102 | Ankit Verma  |          80000 |
+-------------+--------------+----------------+
2 rows in set (0.008 sec)

mysql> select *from employee_details order by employeesalary;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         104 | Dixit Shah     |          30000 |
|         101 | Aniket Kadam   |          60000 |
|         103 | Prasad Sakhare |          70000 |
|         102 | Ankit Verma    |          80000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
5 rows in set (0.351 sec)

mysql> select *from employee_details order by employeename;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         104 | Dixit Shah     |          30000 |
|         105 | Manish Khapare |          90000 |
|         103 | Prasad Sakhare |          70000 |
+-------------+----------------+----------------+
5 rows in set (0.352 sec)

mysql> select *from employee_details order by employeename desc;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         103 | Prasad Sakhare |          70000 |
|         105 | Manish Khapare |          90000 |
|         104 | Dixit Shah     |          30000 |
|         102 | Ankit Verma    |          80000 |
|         101 | Aniket Kadam   |          60000 |
+-------------+----------------+----------------+
5 rows in set (0.008 sec)

mysql> select *from employee_details order by employeesalary desc;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         105 | Manish Khapare |          90000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
|         101 | Aniket Kadam   |          60000 |
|         104 | Dixit Shah     |          30000 |
+-------------+----------------+----------------+
5 rows in set (0.022 sec)

mysql> select *from employee_details order by employeesalary desc limit 2;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         105 | Manish Khapare |          90000 |
|         102 | Ankit Verma    |          80000 |
+-------------+----------------+----------------+
2 rows in set (0.313 sec)

mysql> select *from customer;
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email                      | phone_no    | address                   | pin_code |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785              | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c102        | kinjal | Mulund     | kinjalpatel22790@gmail.com | 8596548469  | Shree Apartment           |   400801 |
| c103        | diksha | KisanNagar | diksha002gmail.com         | 9658471584  | Runwal Residency          |   400804 |
| c104        | Nupur  | Kolshet    | nupurb02gmail.com          | 9658972584  | Nirmala Residency         |   400604 |
| c105        | Arya   | Thane      | aaruk56@gmail.com          | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
5 rows in set (0.594 sec)

mysql> select distinct city from customer;
+------------+
| city       |
+------------+
| Thane      |
| Mulund     |
| KisanNagar |
| Kolshet    |
+------------+
4 rows in set (0.348 sec)

mysql> select city from customer;
+------------+
| city       |
+------------+
| Thane      |
| Mulund     |
| KisanNagar |
| Kolshet    |
| Thane      |
+------------+
5 rows in set (0.009 sec)

mysql> select *from customer;
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email                      | phone_no    | address                   | pin_code |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785              | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c102        | kinjal | Mulund     | kinjalpatel22790@gmail.com | 8596548469  | Shree Apartment           |   400801 |
| c103        | diksha | KisanNagar | diksha002gmail.com         | 9658471584  | Runwal Residency          |   400804 |
| c104        | Nupur  | Kolshet    | nupurb02gmail.com          | 9658972584  | Nirmala Residency         |   400604 |
| c105        | Arya   | Thane      | aaruk56@gmail.com          | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
5 rows in set (0.009 sec)

mysql> select *from customer where customer_id between 'c101' and 'c104';
+-------------+--------+------------+----------------------------+------------+---------------------------+----------+
| customer_id | name   | city       | email                      | phone_no   | address                   | pin_code |
+-------------+--------+------------+----------------------------+------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785              | 9321982516 | Gulmohar Heights majiwada |   400601 |
| c102        | kinjal | Mulund     | kinjalpatel22790@gmail.com | 8596548469 | Shree Apartment           |   400801 |
| c103        | diksha | KisanNagar | diksha002gmail.com         | 9658471584 | Runwal Residency          |   400804 |
| c104        | Nupur  | Kolshet    | nupurb02gmail.com          | 9658972584 | Nirmala Residency         |   400604 |
+-------------+--------+------------+----------------------------+------------+---------------------------+----------+
4 rows in set (0.360 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |       20000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       10 |       40000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p104       |       10 |       50000 | cash         | 2026-06-07 00:00:00 | shipping     |
|      104 | c105        | p105       |       10 |       40000 | gpay         | 2026-06-10 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       40000 | cash         | 2026-06-09 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.489 sec)


mysql> select *from order_details where order_date between '2026-06-06' and '2026-06-09';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |       20000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       10 |       40000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p104       |       10 |       50000 | cash         | 2026-06-07 00:00:00 | shipping     |
|      105 | c101        | p101       |       40 |       40000 | cash         | 2026-06-09 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.007 sec)

mysql> select *from customer;
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email                      | phone_no    | address                   | pin_code |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785              | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c102        | kinjal | Mulund     | kinjalpatel22790@gmail.com | 8596548469  | Shree Apartment           |   400801 |
| c103        | diksha | KisanNagar | diksha002gmail.com         | 9658471584  | Runwal Residency          |   400804 |
| c104        | Nupur  | Kolshet    | nupurb02gmail.com          | 9658972584  | Nirmala Residency         |   400604 |
| c105        | Arya   | Thane      | aaruk56@gmail.com          | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
5 rows in set (0.007 sec)

mysql> select *from customer where customer_id in ('c101','103','105');
+-------------+------+-------+---------------+------------+---------------------------+----------+
| customer_id | name | city  | email         | phone_no   | address                   | pin_code |
+-------------+------+-------+---------------+------------+---------------------------+----------+
| c101        | Riya | Thane | kadamriya@785 | 9321982516 | Gulmohar Heights majiwada |   400601 |
+-------------+------+-------+---------------+------------+---------------------------+----------+
1 row in set (0.012 sec)

mysql> select *from customer where customer_id in ('c101','c103','c105');
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email              | phone_no    | address                   | pin_code |
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785      | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c103        | diksha | KisanNagar | diksha002gmail.com | 9658471584  | Runwal Residency          |   400804 |
| c105        | Arya   | Thane      | aaruk56@gmail.com  | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
3 rows in set (0.009 sec)

mysql> select *from customer where customer_id not in ('c101','c103','c105');
+-------------+--------+---------+----------------------------+------------+-------------------+----------+
| customer_id | name   | city    | email                      | phone_no   | address           | pin_code |
+-------------+--------+---------+----------------------------+------------+-------------------+----------+
| c102        | kinjal | Mulund  | kinjalpatel22790@gmail.com | 8596548469 | Shree Apartment   |   400801 |
| c104        | Nupur  | Kolshet | nupurb02gmail.com          | 9658972584 | Nirmala Residency |   400604 |
+-------------+--------+---------+----------------------------+------------+-------------------+----------+
2 rows in set (0.013 sec)

mysql> select *from customer where city is null;
Empty set (0.317 sec)

mysql> select *from customer where city is not null;
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email                      | phone_no    | address                   | pin_code |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785              | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c102        | kinjal | Mulund     | kinjalpatel22790@gmail.com | 8596548469  | Shree Apartment           |   400801 |
| c103        | diksha | KisanNagar | diksha002gmail.com         | 9658471584  | Runwal Residency          |   400804 |
| c104        | Nupur  | Kolshet    | nupurb02gmail.com          | 9658972584  | Nirmala Residency         |   400604 |
| c105        | Arya   | Thane      | aaruk56@gmail.com          | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+----------------------------+-------------+---------------------------+----------+
5 rows in set (0.010 sec)


mysql> select *from customer where city='Thane' or address='Runwal Residency';
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
| customer_id | name   | city       | email              | phone_no    | address                   | pin_code |
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
| c101        | Riya   | Thane      | kadamriya@785      | 9321982516  | Gulmohar Heights majiwada |   400601 |
| c103        | diksha | KisanNagar | diksha002gmail.com | 9658471584  | Runwal Residency          |   400804 |
| c105        | Arya   | Thane      | aaruk56@gmail.com  | 84965726856 | Sai Apartment             |   400601 |
+-------------+--------+------------+--------------------+-------------+---------------------------+----------+
3 rows in set (0.314 sec)

mysql>