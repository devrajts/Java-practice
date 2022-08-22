mysql> create table person(personid int, lastName varchar(10),firstName varchar(10));
Query OK, 0 rows affected (0.24 sec)

mysql> insert into person values(1,"Wang","Allen");
Query OK, 1 row affected (0.06 sec)

mysql> insert into person values(2,"Alice","Bob");
Query OK, 1 row affected (0.12 sec)

mysql> create table address(addressid int,personid int,city varchar(25),state varchar(25));
Query OK, 0 rows affected (0.19 sec)

mysql> insert into address values(1,2,"New York City","New York");
Query OK, 1 row affected (0.12 sec)

mysql> insert into address values(2,3,"San Diego","California");
Query OK, 1 row affected (0.13 sec)

mysql>  select * from person; select * from address;
+----------+----------+-----------+
| personid | lastName | firstName |
+----------+----------+-----------+
|        1 | Wang     | Allen     |
|        2 | Alice    | Bob       |
+----------+----------+-----------+
2 rows in set (0.00 sec)

+-----------+----------+---------------+------------+
| addressid | personid | city          | state      |
+-----------+----------+---------------+------------+
|         1 |        2 | New York City | New York   |
|         2 |        3 | San Diego     | California |
+-----------+----------+---------------+------------+
2 rows in set (0.00 sec)

mysql> select firstName,lastName,city,state from address right join person on address.personid=person.personid;
+-----------+----------+---------------+----------+
| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | NULL          | NULL     |
| Bob       | Alice    | New York City | New York |
+-----------+----------+---------------+----------+
2 rows in set (0.00 sec)

