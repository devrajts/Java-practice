mysql> use assignment;
Database changed
mysql> create table movie(id int,title varchar(20),director varchar(20),year year,length_minutes int);
Query OK, 0 rows affected (0.51 sec)

mysql> insert into movie values(1,"Toy Story","John Lasseter","1995",81);
Query OK, 1 row affected (0.12 sec)

mysql> insert into movie values(2,"A Bug's Life","John Lasseter","1998",95);
Query OK, 1 row affected (0.13 sec)

mysql> insert into movie values(3,"Toy Story 2","John Lasseter","1999",93);
Query OK, 1 row affected (0.12 sec)

mysql> insert into movie values(4,"Monsters, Inc.","Pete Doctor","2001",92);
Query OK, 1 row affected (0.13 sec)

mysql> insert into movie values(5,"Civil War","Andrew Stanton","2003",107);
Query OK, 1 row affected (0.12 sec)

mysql> insert into movie values(6,"The Incredibiles","Brad Bird","2004",116);
Query OK, 1 row affected (0.03 sec)

mysql> create table movie_rating(movie_id int,rating double,domestic_sales bigint,international_sales bigint);
Query OK, 0 rows affected (0.28 sec)

mysql> insert into movie_rating values(5,8.2,380843261,555900000);
Query OK, 1 row affected (0.15 sec)

mysql> insert into movie_rating values(1,7.4,268492764,475066843);
Query OK, 1 row affected (0.13 sec)

mysql> insert into movie_rating values(3,8,206445654,417277164);
Query OK, 1 row affected (0.03 sec)

mysql> insert into movie_rating values(2,6.4,191452396,368400000);
Query OK, 1 row affected (0.12 sec)

mysql> insert into movie_rating values(4,7.9,245852179,231963000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into movie_rating values(6,8,261441092,370001000);
Query OK, 1 row affected (0.13 sec)

mysql> select * from movie;
+------+------------------+----------------+------+----------------+
| id   | title            | director       | year | length_minutes |
+------+------------------+----------------+------+----------------+
|    1 | Toy Story        | John Lasseter  | 1995 |             81 |
|    2 | A Bug's Life     | John Lasseter  | 1998 |             95 |
|    3 | Toy Story 2      | John Lasseter  | 1999 |             93 |
|    4 | Monsters, Inc.   | Pete Doctor    | 2001 |             92 |
|    5 | Civil War        | Andrew Stanton | 2003 |            107 |
|    6 | The Incredibiles | Brad Bird      | 2004 |            116 |
+------+------------------+----------------+------+----------------+
6 rows in set (0.00 sec)

mysql> select * from movie_rating;
+----------+--------+----------------+---------------------+
| movie_id | rating | domestic_sales | international_sales |
+----------+--------+----------------+---------------------+
|        5 |    8.2 |      380843261 |           555900000 |
|        1 |    7.4 |      268492764 |           475066843 |
|        3 |      8 |      206445654 |           417277164 |
|        2 |    6.4 |      191452396 |           368400000 |
|        4 |    7.9 |      245852179 |           231963000 |
|        6 |      8 |      261441092 |           370001000 |
+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql> select title from movie where id in(select movie_id from movie_rating where international_sales>domestic_sales);select domestic_sales,international_sales from movie_rating where international_sales>domestic_sales;
+------------------+
| title            |
+------------------+
| Toy Story        |
| A Bug's Life     |
| Toy Story 2      |
| Civil War        |
| The Incredibiles |
+------------------+
5 rows in set (0.00 sec)

+----------------+---------------------+
| domestic_sales | international_sales |
+----------------+---------------------+
|      380843261 |           555900000 |
|      268492764 |           475066843 |
|      206445654 |           417277164 |
|      191452396 |           368400000 |
|      261441092 |           370001000 |
+----------------+---------------------+
5 rows in set (0.00 sec)

-----------------------------------------------------------------------------------------------------------------

mysql> select title from movie where id in(select movie_id from movie_rating order by rating desc);
+------------------+
| title            |
+------------------+
| Toy Story        |
| A Bug's Life     |
| Toy Story 2      |
| Monsters, Inc.   |
| Civil War        |
| The Incredibiles |
+------------------+
6 rows in set (0.00 sec)