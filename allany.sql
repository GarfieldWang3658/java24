
SELECT `name`,sal,deptno
FROM emp
WHERE sal > all(
SELECT sal
FROM emp
WHERE deptno = 30
)


  