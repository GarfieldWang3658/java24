#外部結合
CREATE TABLE stu(
id INT,
name VARCHAR(32)
);

INSERT INTO stu 
VALUES(1,'Jack'),(2,'Tom'),(3,'Kity'),(4,'nono');

CREATE TABLE exam(
id INT,
grade INT
);

INSERT INTO exam 
VALUES(1,56),(2,76),(11,8);

DELETE FROM stu

SELECT*FROM dept
SELECT*FROM emp

SELECT `name`,stu.id,grade
FROM stu,exam
WHERE stu.id = exam.id

#左結合
SELECT `name`,stu.id,exam.grade
FROM stu LEFT JOIN exam ON stu.id = exam.id

#右結合
SELECT `name`,stu.id,exam.grade
FROM stu RIGHT JOIN exam ON stu.id = exam.id

 
SELECT `name`,job,dname
FROM emp RIGHT JOIN dept ON emp.deptno = dept.deptno

SELECT dname,`name`,job
FROM dept LEFT JOIN emp ON dept.deptno = emp.deptno





