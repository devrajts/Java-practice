mysql> use db1;
Database changed
mysql> create table person(id int primary key, email varchar(25));
Query OK, 0 rows affected (0.72 sec)

mysql> insert into person values(1,"a@b.com");
Query OK, 1 row affected (0.23 sec)

mysql> insert into person values(2,"c@d.com");
Query OK, 1 row affected (0.07 sec)

mysql> insert into person values(3,"a@b.com");
Query OK, 1 row affected (0.13 sec)

mysql> select * from person;
+------+---------+
| id   | email   |
+------+---------+
|    1 | a@b.com |
|    2 | c@d.com |
|    3 | a@b.com |
+------+---------+
3 rows in set (0.00 sec)

----------------------------------------------------------------------------------------------------------------------------------

mysql> select email from person having count(email)>1;
+---------+
| email   |
+---------+
| a@b.com |
+---------+
1 row in set (0.12 sec)