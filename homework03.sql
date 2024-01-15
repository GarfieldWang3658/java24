SELECT name, empno, deptno
FROM emp
WHERE deptno = 30 AND job = 'clerk';

SELECT *
FROM emp
WHERE IFNULL(comm,0) >sal*0.6

SELECT*FROM emp

SELECT *
FROM emp
WHERE (deptno = 10 AND job = 'manager' ) 
OR (deptno = 20 AND job='clerk')
OR(job NOT IN ('clerk','manager')AND sal>2000);


SELECT DISTINCT job
FROM emp
WHERE comm IS NOT NULL;


SELECT *
FROM emp
WHERE  comm IS NULL OR comm<100;

SELECT *FROM emp
SELECT *FROM emp

SELECT*
FROM emp
WHERE LAST_DAY(hiredate)-2 = hiredate;
 
SELECT*
FROM emp
WHERE DATE_ADD(hiredate,INTERVAL 30 YEAR)<NOW();

SELECT CONCAT(UCASE(SUBSTRING(name,1,1)),SUBSTRING(name,2))AS 'ename'
FROM emp
WHERE CHAR_LENGTH(name)=5;

SELECT name IS NOT NULL
FROM emp
WHERE INSERT

SELECT*
FROM emp
WHERE name NOT LIKE '%r%'

SELECT SUBSTRING(name,1,3)AS 'ename'
FROM emp

SELECT REPLACE(name,'a','A')
FROM emp



SELECT `name`,hiredate
FROM emp
WHERE DATE_ADD(hiredate,INTERVAL 30 YEAR)< NOW()


SELECT*
FROM emp
ORDER BY `name`;

SELECT name,hiredate
FROM emp
ORDER BY hiredate;

SELECT name,job,sal
FROM emp
ORDER BY job DESC , sal;

SELECT FLOOR(sal/30) AS '日薪'
FROM emp

SELECT name,CONCAT(YEAR(hiredate),'年',MONTH(hiredate),'月')AS '入社月'
FROM emp
#WHERE MONTH(hiredate)=2
ORDER BY MONTH(hiredate),YEAR(hiredate)
　
SELECT name,DATEDIFF(NOW(),hiredate)AS'勤務日数'
FROM emp

SELECT*
FROM emp
WHERE name LIKE '%a%'

SELECT name,FLOOR(DATEDIFF(NOW(),hiredate)/365)AS'勤務年数',
FLOOR(DATEDIFF(NOW(),hiredate)%365/31)AS'勤務月数',
DATEDIFF(NOW(),hiredate)%31 AS '勤務日数'
FROM emp