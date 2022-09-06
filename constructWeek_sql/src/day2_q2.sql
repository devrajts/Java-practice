mysql> use org;
Database changed
mysql> CREATE TABLE Worker (
-> WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
-> FIRST_NAME CHAR(25),
-> LAST_NAME CHAR(25),
-> SALARY INT(15),
-> JOINING_DATE DATETIME,
-> DEPARTMENT CHAR(25)
-> );
Query OK, 0 rows affected, 1 warning (0.28 sec)

mysql> INSERT INTO Worker
-> (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
-> (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
-> (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
-> (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
-> (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
-> (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
-> (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
-> (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
-> (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
Query OK, 8 rows affected, 8 warnings (0.18 sec)
Records: 8  Duplicates: 0  Warnings: 8

mysql> CREATE TABLE Bonus (
-> WORKER_REF_ID INT,
-> BONUS_AMOUNT INT(10),
-> BONUS_DATE DATETIME,
-> FOREIGN KEY (WORKER_REF_ID)
-> REFERENCES Worker(WORKER_ID)
-> ON DELETE CASCADE
-> );
Query OK, 0 rows affected, 1 warning (0.18 sec)

mysql> INSERT INTO Bonus
-> (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
-> (001, 5000, '16-02-20'),
-> (002, 3000, '16-06-11'),
-> (003, 4000, '16-02-20'),
-> (001, 4500, '16-02-20'),
-> (002, 3500, '16-06-11');
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE Title (
-> WORKER_REF_ID INT,
-> WORKER_TITLE CHAR(25),
-> AFFECTED_FROM DATETIME,
-> FOREIGN KEY (WORKER_REF_ID)
-> REFERENCES Worker(WORKER_ID)
-> ON DELETE CASCADE
-> );
Query OK, 0 rows affected (0.53 sec)

mysql> INSERT INTO Title
-> (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
-> (001, 'Manager', '2016-02-20 00:00:00'),
-> (002, 'Executive', '2016-06-11 00:00:00'),
-> (008, 'Executive', '2016-06-11 00:00:00'),
-> (005, 'Manager', '2016-06-11 00:00:00'),
-> (004, 'Asst. Manager', '2016-06-11 00:00:00'),
-> (007, 'Executive', '2016-06-11 00:00:00'),
-> (006, 'Lead', '2016-06-11 00:00:00'),
-> (003, 'Lead', '2016-06-11 00:00:00');
Query OK, 8 rows affected (0.15 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> select * from worker;select * from bonus;select * from title;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.11 sec)

+---------------+--------------+---------------------+
| WORKER_REF_ID | BONUS_AMOUNT | BONUS_DATE          |
+---------------+--------------+---------------------+
|             1 |         5000 | 2016-02-20 00:00:00 |
|             2 |         3000 | 2016-06-11 00:00:00 |
|             3 |         4000 | 2016-02-20 00:00:00 |
|             1 |         4500 | 2016-02-20 00:00:00 |
|             2 |         3500 | 2016-06-11 00:00:00 |
+---------------+--------------+---------------------+
5 rows in set (0.00 sec)

+---------------+---------------+---------------------+
| WORKER_REF_ID | WORKER_TITLE  | AFFECTED_FROM       |
+---------------+---------------+---------------------+
|             1 | Manager       | 2016-02-20 00:00:00 |
|             2 | Executive     | 2016-06-11 00:00:00 |
|             8 | Executive     | 2016-06-11 00:00:00 |
|             5 | Manager       | 2016-06-11 00:00:00 |
|             4 | Asst. Manager | 2016-06-11 00:00:00 |
|             7 | Executive     | 2016-06-11 00:00:00 |
|             6 | Lead          | 2016-06-11 00:00:00 |
|             3 | Lead          | 2016-06-11 00:00:00 |
+---------------+---------------+---------------------+
8 rows in set (0.00 sec)

---------------------------------------------------------------------------------------------------------------------------------
1)
mysql> select max(salary) from worker where salary<(select max(salary) from worker);
+-------------+
| max(salary) |
+-------------+
|      300000 |
+-------------+
1 row in set (0.14 sec)

mysql> select max(salary) from worker where salary<=(select max(salary) from worker);
+-------------+
| max(salary) |
+-------------+
|      500000 |
+-------------+
1 row in set (0.00 sec)

--------------------------------------------------------------------------------------------------------------------------------
2)
mysql> select salary from worker order by salary desc limit 5,1;
+--------+
| salary |
+--------+
|  90000 |
+--------+
1 row in set (0.00 sec)

--------------------------------------------------------------------------------------------------------------------------------
3)
mysql> select * from worker where mod(worker_id,2)=0;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.14 sec)

-----------------------------------------------------------------------------------------------------------------------------------
4)
mysql> select count(worker_id),department from worker group by department order by count(worker_id) desc;
+------------------+------------+
| count(worker_id) | department |
+------------------+------------+
|                4 | Admin      |
|                2 | HR         |
|                2 | Account    |
+------------------+------------+
3 rows in set (0.11 sec)

-----------------------------------------------------------------------------------------------------------------------------------
5)
mysql> select first_name from worker where salary in(select salary from worker w where worker.worker_id <> w.worker_id);
+------------+
| first_name |
+------------+
| Amitabh    |
| Vivek      |
+------------+
2 rows in set (0.04 sec)

---------------------------------------------------------------------------------------------------------------------------