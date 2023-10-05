
mysql> create database student;
Query OK, 1 row affected (0.16 sec)

mysql> use student;
Database changed
mysql> create table student;

mysql> create table student(adm_no int,name char,average int,sex char,s_code int);
Query OK, 0 rows affected (0.34 sec)

mysql> Insert into student(adm_no,name,average,sex,S_code) values(501,R jain,98,M,111);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'jain,98,M,111)' at line 1
mysql> Insert into student(adm_no,name,average,sex,s_code) values(501,R jain,98,M,111);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'jain,98,M,111)' at line 1
mysql> Insert into student values(501,"R jain",98,"M",111);
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> Insert into student values(501,"Rjain",98,"M",111);
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> DROP table student;
Query OK, 0 rows affected (0.27 sec)

mysql> create table student(adm_no int,name varchar,average int,sex char,s_code int);

mysql> create table student(adm_no int primary key,name varchar(30) not null,average int not null,sex

Query OK, 0 rows affected (0.37 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| adm_no  | int         | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| average | int         | NO   |     | NULL    |       |
| sex     | char(2)     | NO   |     | NULL    |       |
| s_code  | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.03 sec)

mysql> insert into student values(501,'R jain',98,'M',111);
Query OK, 1 row affected (0.08 sec)

mysql> insert into student values(545,'Kavitha',73,'F',333);
Query OK, 1 row affected (0.08 sec)

mysql> insert into student values(705,'K Rashika',85,'F',111);
Query OK, 1 row affected (0.07 sec)

mysql> insert into student values(754,'RahulGoel',60,'M',444);
Query OK, 1 row affected (0.11 sec)

mysql> insert into student values(892,'Sahil Jain',78,'M',333);
Query OK, 1 row affected (0.06 sec)

mysql> insert into student values(935,'Rohan Saini',85,'M',222);
Query OK, 1 row affected (0.07 sec)

mysql> insert into student values(955,'Anjali',64,'F',444);
Query OK, 1 row affected (0.08 sec)

mysql> insert into student values(983,'Sneha Agarwal',80,'F',222);
Query OK, 1 row affected (0.10 sec)

mysql> select * from students;
ERROR 1146 (42S02): Table 'student.students' doesn't exist
mysql> select * from student;
+--------+---------------+---------+-----+--------+
| adm_no | name          | average | sex | s_code |
+--------+---------------+---------+-----+--------+
|    501 | R jain        |      98 | M   |    111 |
|    545 | Kavitha       |      73 | F   |    333 |
|    705 | K Rashika     |      85 | F   |    111 |
|    754 | RahulGoel     |      60 | M   |    444 |
|    892 | Sahil Jain    |      78 | M   |    333 |
|    935 | Rohan Saini   |      85 | M   |    222 |
|    955 | Anjali        |      64 | F   |    444 |
|    983 | Sneha Agarwal |      80 | F   |    222 |
+--------+---------------+---------+-----+--------+
8 rows in set (0.00 sec)


mysql> select * from student where name="Rohan Saini";
+--------+-------------+---------+-----+--------+
| adm_no | name        | average | sex | s_code |
+--------+-------------+---------+-----+--------+
|    935 | Rohan Saini |      85 | M   |    222 |
+--------+-------------+---------+-----+--------+
1 row in set (0.00 sec)

mysql> select count(name) from student;
+-------------+
| count(name) |
+-------------+
|           8 |
+-------------+
1 row in set (0.00 sec)


mysql> select count(*) from student;
+----------+
| count(*) |
+----------+
|        8 |
+----------+
1 row in set (0.00 sec)


mysql> SELECT sex, COUNT(*) FROM student GROUP BY sex;
+-----+----------+
| sex | COUNT(*) |
+-----+----------+
| M   |        4 |
| F   |        4 |
+-----+----------+
2 rows in set (0.03 sec)

mysql> SELECT COUNT(*) FROM student GROUP BY sex;
+----------+
| COUNT(*) |
+----------+
|        4 |
|        4 |
+----------+
2 rows in set (0.00 sec)

mysql> SELECT sex, COUNT(*) FROM student GROUP BY sex;
+-----+----------+
| sex | COUNT(*) |
+-----+----------+
| M   |        4 |
| F   |        4 |
+-----+----------+
2 rows in set (0.00 sec)

mysql> select * from student order by name;
+--------+---------------+---------+-----+--------+
| adm_no | name          | average | sex | s_code |
+--------+---------------+---------+-----+--------+
|    955 | Anjali        |      64 | F   |    444 |
|    705 | K Rashika     |      85 | F   |    111 |
|    545 | Kavitha       |      73 | F   |    333 |
|    501 | R jain        |      98 | M   |    111 |
|    754 | RahulGoel     |      60 | M   |    444 |
|    935 | Rohan Saini   |      85 | M   |    222 |
|    892 | Sahil Jain    |      78 | M   |    333 |
|    983 | Sneha Agarwal |      80 | F   |    222 |
+--------+---------------+---------+-----+--------+
8 rows in set (0.00 sec)

mysql> select * from student order by name desc;
+--------+---------------+---------+-----+--------+
| adm_no | name          | average | sex | s_code |
+--------+---------------+---------+-----+--------+
|    983 | Sneha Agarwal |      80 | F   |    222 |
|    892 | Sahil Jain    |      78 | M   |    333 |
|    935 | Rohan Saini   |      85 | M   |    222 |
|    754 | RahulGoel     |      60 | M   |    444 |
|    501 | R jain        |      98 | M   |    111 |
|    545 | Kavitha       |      73 | F   |    333 |
|    705 | K Rashika     |      85 | F   |    111 |
|    955 | Anjali        |      64 | F   |    444 |
+--------+---------------+---------+-----+--------+
8 rows in set (0.00 sec)


mysql> select * from student order by average desc;
+--------+---------------+---------+-----+--------+
| adm_no | name          | average | sex | s_code |
+--------+---------------+---------+-----+--------+
|    501 | R jain        |      98 | M   |    111 |
|    705 | K Rashika     |      85 | F   |    111 |
|    935 | Rohan Saini   |      85 | M   |    222 |
|    983 | Sneha Agarwal |      80 | F   |    222 |
|    892 | Sahil Jain    |      78 | M   |    333 |
|    545 | Kavitha       |      73 | F   |    333 |
|    955 | Anjali        |      64 | F   |    444 |
|    754 | RahulGoel     |      60 | M   |    444 |
+--------+---------------+---------+-----+--------+
8 rows in set (0.00 sec)




mysql> select * from student where name like "K%";
+--------+-----------+---------+-----+--------+
| adm_no | name      | average | sex | s_code |
+--------+-----------+---------+-----+--------+
|    545 | Kavitha   |      73 | F   |    333 |
|    705 | K Rashika |      85 | F   |    111 |
+--------+-----------+---------+-----+--------+
2 rows in set (0.00 sec)


mysql> SELECT adm_no, name, (average * 5) AS total_marks FROM student;
+--------+---------------+-------------+
| adm_no | name          | total_marks |
+--------+---------------+-------------+
|    501 | R jain        |         490 |
|    545 | Kavitha       |         365 |
|    705 | K Rashika     |         425 |
|    754 | RahulGoel     |         300 |
|    892 | Sahil Jain    |         390 |
|    935 | Rohan Saini   |         425 |
|    955 | Anjali        |         320 |
|    983 | Sneha Agarwal |         400 |
+--------+---------------+-------------+
8 rows in set (0.05 sec)



mysql> select * from student where average>=80 AND average>=90;
+--------+--------+---------+-----+--------+
| adm_no | name   | average | sex | s_code |
+--------+--------+---------+-----+--------+
|    501 | R jain |      98 | M   |    111 |
+--------+--------+---------+-----+--------+
1 row in set (0.07 sec)

mysql> select * from student where average>=80 AND s_code=333;
Empty set (0.00 sec)


mysql> select name,average from student where s_code=333 or s_code=222;
+---------------+---------+
| name          | average |
+---------------+---------+
| Kavitha       |      73 |
| Sahil Jain    |      78 |
| Rohan Saini   |      85 |
| Sneha Agarwal |      80 |
+---------------+---------+
4 rows in set (0.00 sec)

mysql> select sum(average) as sum from student;
+------+
| sum  |
+------+
|  623 |
+------+
1 row in set (0.15 sec)

mysql> select max(average) as avg from student;
+------+
| avg  |
+------+
|   98 |
+------+
1 row in set (0.04 sec)

mysql> select min(average) as avg from student;
+------+
| avg  |
+------+
|   60 |
+------+
1 row in set (0.01 sec)

mysql> select min(average) as minimum from student;
+---------+
| minimum |
+---------+
|      60 |
+---------+
1 row in set (0.00 sec)

mysql> select max(average) as maximum from student;
+---------+
| maximum |
+---------+
|      98 |
+---------+
1 row in set (0.00 sec)

mysql> select avg(average) as average from student;
+---------+
| average |
+---------+
| 77.8750 |
+---------+
1 row in set (0.06 sec)



mysql> select max(average),min(average),sum(average) from student group by s_code;
+--------------+--------------+--------------+
| max(average) | min(average) | sum(average) |
+--------------+--------------+--------------+
|           98 |           85 |          183 |
|           78 |           73 |          151 |
|           64 |           60 |          124 |
|           85 |           80 |          165 |
+--------------+--------------+--------------+
4 rows in set (0.06 sec)

mysql> select s_code,max(average),min(average),sum(average) from student group by s_code;
+--------+--------------+--------------+--------------+
| s_code | max(average) | min(average) | sum(average) |
+--------+--------------+--------------+--------------+
|    111 |           98 |           85 |          183 |
|    333 |           78 |           73 |          151 |
|    444 |           64 |           60 |          124 |
|    222 |           85 |           80 |          165 |
+--------+--------------+--------------+--------------+
4 rows in set (0.00 sec)

mysql> select count(*) as S_code  from student group by s_code;
+--------+
| S_code |
+--------+
|      2 |
|      2 |
|      2 |
|      2 |
+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select count(*) as S_code  from student group by s_code;select s_code,count(*) as S_code  from student group by s_code;
+--------+
| S_code |
+--------+
|      2 |
|      2 |
|      2 |
|      2 |
+--------+
4 rows in set, 1 warning (0.00 sec)

+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.01 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select s_code,count(*) as S_code  from student group by s_code;
+--------+--------+
| s_code | S_code |
+--------+--------+
|    111 |      2 |
|    333 |      2 |
|    444 |      2 |
|    222 |      2 |
+--------+--------+
4 rows in set, 1 warning (0.00 sec)



