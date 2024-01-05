#外部キー
CREATE TABLE my_class(
id INT PRIMARY KEY,
`name`VARCHAR(32)NOT NULL DEFAULT(' ')); 

CREATE TABLE my_stu(
id INT PRIMARY KEY,
`name` VARCHAR(32)NOT NULL DEFAULT(' '),
class_id INT,
FOREIGN KEY (class_id) REFERENCES my_class(id));

INSERT INTO my_class
VALUES(100,'java'),(200,'web');

INSERT INTO my_class
VALUES(300,'php');　

SELECT*FROM my_class

INSERT INTO my_stu
VALUES(1,'Tom',100);

INSERT INTO my_stu
VALUES(2,'Jack',200);

INSERT INTO my_stu
VALUES(3,'HSP',300);

INSERT INTO my_stu
VALUES(4,'mary',400); #400class_idは存在していません

INSERT INTO my_stu
VALUES(5,'king',NULL); #添加可能、前提はnot nullを設定していません




