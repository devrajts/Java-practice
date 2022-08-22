mysql> create table employee(id int primary key,name varchar(20),salary int,departmentId int);
Query OK, 0 rows affected (1.33 sec)

mysql> create table department(id int primary key,name varchar(20));
Query OK, 0 rows affected (0.27 sec)

mysql> insert into employee values(1,"Joe",85000,1);
Query OK, 1 row affected (0.13 sec)

mysql> insert into employee values(2,"Henry",80000,2);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3,"Sam",60000,2);
Query OK, 1 row affected (0.09 sec)

mysql> insert into employee values(4,"Max",90000,1);
Query OK, 1 row affected (0.09 sec)

mysql> insert into employee values(5,"Janet",69000,1);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(6,"Randy",85000,1);
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee values(7,"Will",70000,1);
Query OK, 1 row affected (0.07 sec)

mysql> select * from employee;
+----+-------+--------+--------------+
| id | name  | salary | departmentId |
+----+-------+--------+--------------+
|  1 | Joe   |  85000 |            1 |
|  2 | Henry |  80000 |            2 |
|  3 | Sam   |  60000 |            2 |
|  4 | Max   |  90000 |            1 |
|  5 | Janet |  69000 |            1 |
|  6 | Randy |  85000 |            1 |
|  7 | Will  |  70000 |            1 |
+----+-------+--------+--------------+
7 rows in set (0.00 sec)

mysql> create table department(id int primary key,Dname varchar(10));
Query OK, 0 rows affected (0.52 sec)

mysql> insert into department values(1,"it");
Query OK, 1 row affected (0.20 sec)

mysql> insert into department values(2,"Sales");
Query OK, 1 row affected (0.12 sec)

mysql> select * from department;
+----+-------+
| id | Dname |
+----+-------+
|  1 | it    |
|  2 | Sales |
+----+-------+
2 rows in set (0.00 sec)

----------------------------------------------------------------------------------------------------------------------------------------
mysql>  select Dname,name, salary from department,employee where department.id=employee.departmentId order by Dname,salary desc;
+-------+-------+--------+
| Dname | name  | salary |
+-------+-------+--------+
| it    | Max   |  90000 |
| it    | Joe   |  85000 |
| it    | Randy |  85000 |
| it    | Will  |  70000 |
| it    | Janet |  69000 |
| Sales | Henry |  80000 |
| Sales | Sam   |  60000 |
+-------+-------+--------+
7 rows in set (0.00 sec)

mysql>