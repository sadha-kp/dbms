CREATE TABLE persons (person_id INT PRIMARY KEY,name VARCHAR(50) NOT NULL,aadhar BIGINT NOT NULL UNIQUE,age INT CHECK (age > 18));


CREATE TABLE orders (orderid INT PRIMARY KEY,order_number INT NOT NULL,personid INT,
FOREIGN KEY (personid) REFERENCES persons(person_id));


DESCRIBE persons;
DESCRIBE orders;

ALTER TABLE employee ADD PRIMARY KEY (emp_no);

ALTER TABLE department ADD PRIMARY KEY (dept_no);

ALTER TABLE employee ADD CONSTRAINT fk_dept FOREIGN KEY (dept_no) REFERENCES department(dept_no) ON DELETE CASCADE;

ALTER TABLE orders DROP PRIMARY KEY;

Query OK, 0 rows affected (0.02 sec)

Query OK, 0 rows affected (0.01 sec)

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| person_id | int         | NO   | PRI | NULL    |       |
| name      | varchar(50) | NO   |     | NULL    |       |
| aadhar    | bigint      | NO   | UNI | NULL    |       |
| age       | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

+-------------+------+-----+-----+---------+-------+
| Field       | Type | Null| Key | Default | Extra |
+-------------+------+-----+-----+---------+-------+
| orderid     | int  | NO  | PRI | NULL    |       |
| order_number| int  | NO  |     | NULL    |       |
| personid    | int  | YES | MUL | NULL    |       |
+-------------+------+-----+-----+---------+-------+
3 rows in set (0.00 sec)

Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
