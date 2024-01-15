SELECT*FROM emp
SELECT*FROM dept
SELECT*FROM salgrade

SELECT COUNT(*) AS c,deptno
FROM emp
GROUP BY deptno HAVING c>1

SELECT*
FROM emp
WHERE sal>(
SELECT sal
FROM emp
WHERE name = 'smith')

SELECT　worker.name AS '従業員', worker.hiredate, leader.name AS'上司',leader.hiredate
FROM emp worker , emp leader
WHERE worker.hiredate > leader.hiredate AND worker.mgr= leader.empno;



SELECT worker.`name` AS '従業員', worker.hiredate, leader.`name` AS '上司', leader.hiredate
FROM emp worker, emp leader
WHERE worker.hiredate > leader.hiredate AND worker.mgr = leader.empno;


SELECT emp.*,dname
FROM emp,dept
WHERE emp.deptno=dept.deptno

SELECT dname,emp.*
FROM dept LEFT JOIN emp
ON emp.deptno=dept.deptno 
WHERE name IS NULL

SELECT dname,emp.*
FROM dept LEFT JOIN emp
ON emp.deptno=dept.deptno 
WHERE job = 'clerk'



SELECT MIN(sal)AS min_sal , job
FROM emp
GROUP BY job HAVING min_sal > 1500;

SELECT dname,emp.name
FROM dept,emp
WHERE emp.deptno=dept.deptno AND dname = 'sales'


SELECT*
FROM emp
WHERE sal>(
SELECT AVG(sal) AS avg_sal
FROM emp)

SELECT*
FROM emp
WHERE job = (
SELECT job
FROM emp
WHERE name = 'scott') AND name != 'scott'


SELECT name,sal
FROM emp
WHERE sal >(
SELECT MAX(sal)
FROM emp
WHERE deptno = 30
);

SELECT count(*)AS'部门员工数量',deptno,AVG(sal),FORMAT((AVG(DATEDIFF(NOW(),hiredate))/365),2)AS'平均服务年限'
FROM emp
GROUP BY deptno

SELECT dept.*,tmp.c
FROM dept,(
SELECT COUNT(*)AS c,deptno
FROM emp
GROUP BY deptno)tmp
WHERE dept.deptno = tmp.deptno ;


SELECT dname,COUNT(dname)
FROM emp,dept
WHERE emp.deptno=dept.deptno
GROUP BY dname

SELECT MIN(sal),job
FROM emp
GROUP BY job

SELECT MIN(sal),job 
FROM emp
WHERE job = 'manager'


SELECT name,(sal+ IFNULL(comm,0))*12 year_sal
FROM emp
ORDER BY year_sal DESC