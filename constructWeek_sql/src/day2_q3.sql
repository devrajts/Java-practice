mysql> create table employeeDetails(empId int primary key,fullName varchar(20),managerId int,dateOfJoining date,city varchar(20));
Query OK, 0 rows affected (0.74 sec)

mysql> insert into employeeDetails values(121,"John Snow",321,"2014-01-31","Toronto");
Query OK, 1 row affected (0.18 sec)

mysql> insert into employeeDetails values(321,"Walter White",986,"2015-01-30","California");
Query OK, 1 row affected (0.17 sec)

mysql> insert into employeeDetails values(421,"Kuldeep Rana",876,"2016-11-27","New Delhi");
Query OK, 1 row affected (0.04 sec)

mysql> create table employeeSalary(empId int, project varchar(3),salary int,variable int);
Query OK, 0 rows affected (0.21 sec)

mysql> insert into employeeSalary values(121,"p1",8000,500);
Query OK, 1 row affected (0.10 sec)

mysql> insert into employeeSalary values(321,"p2",10000,1000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employeeSalary values(421,"p1",12000,0);
Query OK, 1 row affected (0.12 sec)

mysql> select * from employeeDetails;select * from employeeSalary;
+-------+--------------+-----------+---------------+------------+
| empId | fullName     | managerId | dateOfJoining | city       |
+-------+--------------+-----------+---------------+------------+
|   121 | John Snow    |       321 | 2014-01-31    | Toronto    |
|   321 | Walter White |       986 | 2015-01-30    | California |
|   421 | Kuldeep Rana |       876 | 2016-11-27    | New Delhi  |
+-------+--------------+-----------+---------------+------------+
3 rows in set (0.00 sec)

+------+---------+--------+----------+
| id   | project | salary | variable |
+------+---------+--------+----------+
|  121 | p1      |   8000 |      500 |
|  321 | p2      |  10000 |     1000 |
|  421 | p1      |  12000 |        0 |
+------+---------+--------+----------+
3 rows in set (0.00 sec)

--------------------------------------------------------------------------------------------------------------------------------
1)mysql> select fullName from employeeDetails where fullName like "__hn%";
+-----------+
| fullName  |
+-----------+
| John Snow |
+-----------+
1 row in set (0.00 sec)

----------------------------------------------------------------------------------------------------------------------------------
2)
mysql> select empId,id from employeeDetails,employeeSalary where employeeDetails.empid=employeeSalary.id;
+-------+------+
| empId | id   |
+-------+------+
|   121 |  121 |
|   321 |  321 |
|   421 |  421 |
+-------+------+
3 rows in set (0.00 sec)

-----------------------------------------------------------------------------------------------------------------------------------
3)
mysql> select * from employeeDetails e1 left join employeeSalary e2 on e1.empid=e2.id;
+-------+--------------+-----------+---------------+------------+------+---------+--------+----------+
| empId | fullName     | managerId | dateOfJoining | city       | id   | project | salary | variable |
+-------+--------------+-----------+---------------+------------+------+---------+--------+----------+
|   121 | John Snow    |       321 | 2014-01-31    | Toronto    |  121 | p1      |   8000 |      500 |
|   321 | Walter White |       986 | 2015-01-30    | California |  321 | p2      |  10000 |     1000 |
|   421 | Kuldeep Rana |       876 | 2016-11-27    | New Delhi  |  421 | p1      |  12000 |        0 |
+-------+--------------+-----------+---------------+------------+------+---------+--------+----------+
3 rows in set (0.00 sec)

------------------------------------------------------------------------------------------------------------------------------------
4)
mysql> select max(salary) from employeeSalary;
+-------------+
| max(salary) |
+-------------+
|       12000 |
+-------------+
1 row in set (0.00 sec)

mysql>  select min(salary) from employeeSalary;
+-------------+
| min(salary) |
+-------------+
|        8000 |
+-------------+
1 row in set (0.00 sec)

mysql>  select avg(salary) from employeeSalary;
+-------------+
| avg(salary) |
+-------------+
|  10000.0000 |
+-------------+
1 row in set (0.02 sec)

--------------------------------------------------------------------------------------------------------------------------
5)
select id from employeeSalary where project=null;
Empty set (0.00 sec)

----------------------------------------------------------------------------------------------------------------------------------

