CREATE TABLE my_tab01
(
id INT,
`name` VARCHAR(32),
sal DOUBLE,
job VARCHAR(32),
deptno INT);
DESC my_tab01
 
INSERT INTO my_tab01
(id,`name`,sal,job,deptno)
SELECT empno,`name`,sal,job,deptno
FROM emp

INSERT INTO my_tab01
SELECT*FROM my_tab01

SELECT COUNT(*)
FROM my_tab01 

CREATE TABLE my_tab02 LIKE emp
DESC my_tab02

INSERT INTO my_tab02
SELECT*FROM emp

SELECT*FROM my_tab02

CREATE TABLE my_tmep LIKE my_tab02

INSERT INTO my_tmep
SELECT DISTINCT*FROM my_tab02

SELECT*FROM my_tmep 

DELETE FROM my_tab02

INSERT INTO my_tab02
SELECT*FROM my_tmep

DROP TABLE my_tmep


