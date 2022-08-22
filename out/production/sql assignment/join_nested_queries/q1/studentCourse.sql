mysql> create table student(S_ID varchar(5),S_NAME varchar(10),S_ADDRESS varchar(15),S_PHONE bigint,S_AGE int);
Query OK, 0 rows affected (0.24 sec)

mysql> insert into student values("S1","RAM","DELHI",9455123451,18);
Query OK, 1 row affected (0.12 sec)

mysql> insert into student values("S2","RAMESH","GURGAON",9652421543,18);
Query OK, 1 row affected (0.14 sec)

mysql> insert into student values("S3","SUJIT","CHANDIGARH",9156253131,20);
Query OK, 1 row affected (0.21 sec)

mysql> insert into student values("S4","SURESH","DELHI",9156768971,18);
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values("S5","RATAN","DELHI",9567890876,20);
Query OK, 1 row affected (0.11 sec)

mysql> create table course(C_ID varchar(5),C_NAME varchar(5));
Query OK, 0 rows affected (0.19 sec)

mysql> insert into course values("C1","DSA");
Query OK, 1 row affected (0.12 sec)

mysql> insert into course values("C2","JAVA");
Query OK, 1 row affected (0.12 sec)

mysql> insert into course values("C3","MERN");
Query OK, 1 row affected (0.13 sec)

mysql> create table student_course(S_ID varchar(5),C_ID varchar(5));
Query OK, 0 rows affected (0.20 sec)

mysql> insert into student_course values("S1","C1");
Query OK, 1 row affected (0.12 sec)

mysql> insert into student_course values("S2","C2");
Query OK, 1 row affected (0.12 sec)

mysql> insert into student_course values("S3","C3");
Query OK, 1 row affected (0.23 sec)

mysql> insert into student_course values("S4","C4");
Query OK, 1 row affected (0.12 sec)

mysql> insert into student_course values("S5","C5");
Query OK, 1 row affected (0.23 sec)

mysql> insert into student_course values("S6","C6");
Query OK, 1 row affected (0.13 sec)

mysql> drop table student_course;
Query OK, 0 rows affected (0.14 sec)

mysql> create table student_course(S_ID varchar(5),C_ID varchar(5));
Query OK, 0 rows affected (0.19 sec)

mysql> insert into student_course values("S1","C1");
Query OK, 1 row affected (0.13 sec)

mysql> insert into student_course values("S1","C3");
Query OK, 1 row affected (0.13 sec)

mysql> insert into student_course values("S2","C1");
Query OK, 1 row affected (0.12 sec)

mysql> insert into student_course values("S3","C2");
Query OK, 1 row affected (0.03 sec)

mysql> insert into student_course values("S4","C2");
Query OK, 1 row affected (0.03 sec)

mysql> insert into student_course values("S1","C3");
Query OK, 1 row affected (0.14 sec)

mysql> insert into student_course values("S5","C2");
Query OK, 1 row affected (0.13 sec)

mysql> select * from student;select * from course;select * from student_course;
+------+--------+------------+------------+-------+
| S_ID | S_NAME | S_ADDRESS  | S_PHONE    | S_AGE |
+------+--------+------------+------------+-------+
| S1   | RAM    | DELHI      | 9455123451 |    18 |
| S2   | RAMESH | GURGAON    | 9652421543 |    18 |
| S3   | SUJIT  | CHANDIGARH | 9156253131 |    20 |
| S4   | SURESH | DELHI      | 9156768971 |    18 |
| S5   | RATAN  | DELHI      | 9567890876 |    20 |
+------+--------+------------+------------+-------+
5 rows in set (0.00 sec)

+------+--------+
| C_ID | C_NAME |
+------+--------+
| C1   | DSA    |
| C2   | JAVA   |
| C3   | MERN   |
+------+--------+
3 rows in set (0.00 sec)

+------+------+
| S_ID | C_ID |
+------+------+
| S1   | C1   |
| S1   | C3   |
| S2   | C1   |
| S3   | C2   |
| S4   | C2   |
| S1   | C3   |
| S5   | C2   |
+------+------+
7 rows in set (0.00 sec)

mysql> select * from student where S_ID in (select S_ID from student_course where C_ID="C2") and S_ADDRESS="DELHI";
+------+--------+-----------+------------+-------+
| S_ID | S_NAME | S_ADDRESS | S_PHONE    | S_AGE |
+------+--------+-----------+------------+-------+
| S4   | SURESH | DELHI     | 9156768971 |    18 |
| S5   | RATAN  | DELHI     | 9567890876 |    20 |
+------+--------+-----------+------------+-------+
2 rows in set (0.00 sec)