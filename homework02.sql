DESC dept
DESC emp

SELECT*FROM dept;
SELECT*FROM emp;

SELECT dname FROM dept;
SELECT name,(sal+ IFNULL(comm,0))*13 AS '年收入' FROM emp; 


SELECT name,sal
FROM emp
WHERE sal > 2850;

SELECT name,sal
FROM emp
WHERE sal BETWEEN 1500 AND 2850;

SELECT name,deptno
FROM emp
WHERE empno = 7566;

SELECT name,sal,deptno
FROM emp
WHERE (deptno =10 OR deptno = 30) AND sal>1500

SELECT name,job
FROM emp
WHERE mgr IS NULL;

SELECT name,hiredate
FROM emp
WHERE hiredate> DATE('1991-02-01')AND hiredate<DATE('1991-05-01')
ORDER BY hiredate DESC;

SELECT name,sal,comm
FROM emp
WHERE comm IS NOT NULL
ORDER BY sal DESC



