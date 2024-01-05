
SELECT name,sal,dname,emp.deptno
FROM emp,dept
WHERE emp.deptno = dept.deptno


SELECT name,sal,grade
FROM emp,salgrade
WHERE sal BETWEEN losal AND hisal;

SELECT*FROM dept

SELECT name,sal,dname,emp.deptno
FROM emp,dept
WHERE emp.deptno = dept.deptno
ORDER BY dname DESC
