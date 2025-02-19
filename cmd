Microsoft Windows [Version 10.0.22631.4890]
(c) Microsoft Corporation. All rights reserved.

C:\Users\lenovo>CD C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.049 sec)

MariaDB [(none)]> CREATE DATABASE PERPUSTAKAAN
    -> ;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> CREATE DATABASE IF NOT EXIST SIPERPUS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'EXIST SIPERPUS' at line 1
MariaDB [(none)]> CREATE DATABASE IF NOT EXISTS SIPERPUS;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| perpustakaan       |
| phpmyadmin         |
| siperpus           |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> USE PERPUSTAKAAN;
Database changed
MariaDB [PERPUSTAKAAN]> CREATE TABLE mahasiswa (
    -> NPM char(5) NOT NULL PRIMARY KEY,
    -> nama varchar(20) NOT NULL,
    -> tempat_lahir varchar(20) NOT NULL,
    -> tanggal_Lahir DATE NOT NULL,
    -> no-hp varchar(25)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-hp varchar(25)
)' at line 6
MariaDB [PERPUSTAKAAN]>  CREATE TABLE mahasiswa (
    -> NPM char(5) NOT NULL PRIMARY KEY,
    -> nama varchar(20) NOT NULL,
    -> tempat_lahir varchar(20) NOT NULL,
    -> tanggal_Lahir DATE NOT NULL,
    -> no_hp varchar(25)
    -> );
Query OK, 0 rows affected (0.012 sec)

MariaDB [PERPUSTAKAAN]> show tables;
+------------------------+
| Tables_in_perpustakaan |
+------------------------+
| mahasiswa              |
+------------------------+
1 row in set (0.001 sec)

MariaDB [PERPUSTAKAAN]> DESC mahasiswa;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| NPM           | char(5)     | NO   | PRI | NULL    |       |
| nama          | varchar(20) | NO   |     | NULL    |       |
| tempat_lahir  | varchar(20) | NO   |     | NULL    |       |
| tanggal_Lahir | date        | NO   |     | NULL    |       |
| no_hp         | varchar(25) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.044 sec)

MariaDB [PERPUSTAKAAN]>
