mysql> create table bank(name varchar(10),accNo varchar(20),balance int);
Query OK, 0 rows affected (0.16 sec)

mysql> insert into bank values("Ram","ac-12123",50000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into bank values("John","ac-w4123",60000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into bank values("David","ac-23143",10000);
Query OK, 1 row affected (0.05 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> update bank set balance=balance-10000 where accNo="ac-w4123"; update bank set balance=balance+10000 where accNo="ac-23143";commit;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Query OK, 0 rows affected (0.07 sec)

mysql> select * from bank;
+-------+----------+---------+
| name  | accNo    | balance |
+-------+----------+---------+
| Ram   | ac-12123 |   50000 |
| John  | ac-w4123 |   50000 |
| David | ac-23143 |   20000 |
+-------+----------+---------+
3 rows in set (0.00 sec)