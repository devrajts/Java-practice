mysql> use assignment;
Database changed
mysql> create table employee(EmpID int,EmpFname varchar(20),EmpLname varchar(20),Department varchar(20),Project varchar(5),Address varchar(20),DOB date,Gender varchar(1),Salary int);
Query OK, 0 rows affected (0.27 sec)

mysql> insert into employee values(1,"Sanjay","Mehra","HR","P1","Hyderabad(HYD)","1976-12-01","M",50000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into employee values(2,"Ananya","Mishra","Admin","P2","Delhi(DEL)","1968-05-02","F",75000);
Query OK, 1 row affected (0.12 sec)

mysql> insert into employee values(3,"Rohan","Diwan","Account","P1","Mumbai(BOM)","1980-01-01","M",90000);
Query OK, 1 row affected (0.12 sec)

mysql> insert into employee values(4,"Sonia","Kulkarni","HR","P3","Hyderabad(HYD)","1992-05-02","F",50000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values(5,"Priya","Thakur","Development","P2","Bangalore(BAN)","1992-02-23","F",100000);
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+-------+----------+----------+-------------+---------+----------------+------------+--------+--------+
| EmpID | EmpFname | EmpLname | Department  | Project | Address        | DOB        | Gender | Salary |
+-------+----------+----------+-------------+---------+----------------+------------+--------+--------+
|     1 | Sanjay   | Mehra    | HR          | P1      | Hyderabad(HYD) | 1976-12-01 | M      |  50000 |
|     2 | Ananya   | Mishra   | Admin       | P2      | Delhi(DEL)     | 1968-05-02 | F      |  75000 |
|     3 | Rohan    | Diwan    | Account     | P1      | Mumbai(BOM)    | 1980-01-01 | M      |  90000 |
|     4 | Sonia    | Kulkarni | HR          | P3      | Hyderabad(HYD) | 1992-05-02 | F      |  50000 |
|     5 | Priya    | Thakur   | Development | P2      | Bangalore(BAN) | 1992-02-23 | F      | 100000 |
+-------+----------+----------+-------------+---------+----------------+------------+--------+--------+
5 rows in set (0.00 sec)

mysql> select * from employee where department="HR";
+-------+----------+----------+------------+---------+----------------+------------+--------+--------+
| EmpID | EmpFname | EmpLname | Department | Project | Address        | DOB        | Gender | Salary |
+-------+----------+----------+------------+---------+----------------+------------+--------+--------+
|     1 | Sanjay   | Mehra    | HR         | P1      | Hyderabad(HYD) | 1976-12-01 | M      |  50000 |
|     4 | Sonia    | Kulkarni | HR         | P3      | Hyderabad(HYD) | 1992-05-02 | F      |  50000 |
+-------+----------+----------+------------+---------+----------------+------------+--------+--------+
2 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------------------------------

mysql> select count(gender) from employee where gender="F";
+---------------+
| count(gender) |
+---------------+
|             3 |
+---------------+
1 row in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select EmpFname,EmpLname from employee where department="HR" and gender="F";
+----------+----------+
| EmpFname | EmpLname |
+----------+----------+
| Sonia    | Kulkarni |
+----------+----------+
1 row in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select EmpFname from employee where EmpFname like "a%" or "e%" or "i%" or "o%" or "u%";
+----------+
| EmpFname |
+----------+
| Ananya   |
+----------+
1 row in set, 4 warnings (0.10 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select EmpFname from employee where gender="M" and EmpFname like "_a%" or "_e%" or "_i%" or "_o%"or "_u%";
+----------+
| EmpFname |
+----------+
| Sanjay   |
+----------+
1 row in set, 4 warnings (0.00 sec)

----------------------------------------------------------------------------------------------------------------------------------------

mysql> select distinct Department from employee;
+-------------+
| Department  |
+-------------+
| HR          |
| Admin       |
| Account     |
| Development |
+-------------+
4 rows in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select EmpFname from employee where gender="F" and salary<75000;
+----------+
| EmpFname |
+----------+
| Sonia    |
+----------+
1 row in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select count(salary) from employee where salary>50000 and salary<100000;
+---------------+
| count(salary) |
+---------------+
|             2 |
+---------------+
1 row in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------

mysql> select count(distinct project) from employee;
+-------------------------+
| count(distinct project) |
+-------------------------+
|                       3 |
+-------------------------+
1 row in set (0.10 sec)

--------------------------------------------------------------------------------------------------------------------------------------

mysql> select count(EmpID),Department from employee group by department;
+--------------+-------------+
| count(EmpID) | Department  |
+--------------+-------------+
|            2 | HR          |
|            1 | Admin       |
|            1 | Account     |
|            1 | Development |
+--------------+-------------+
4 rows in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------------