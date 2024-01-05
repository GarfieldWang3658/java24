#	各職業の人数、平均収入
SELECT*FROM emp
SELECT COUNT(*),AVG(sal),job
FROM emp
GROUP BY job;

#従業員総人数、補助をもらう従業員人数
#COUNT()はnullを統計しません。
SELECT COUNT(*),COUNT(comm)
FROM emp

SELECT COUNT(*),COUNT(IF(comm IS NULL,0.0,NULL))
FROM emp

SELECT COUNT(*),COUNT(IF(comm IS NULL,0.0,NULL))
FROM emp


#管理者の人数を統計します
SELECT COUNT(DISTINCT mgr)
FROM emp

#最大の給料差額
SELECT MAX(sal)-MIN(sal)
FROM emp

#各部署GROUP BYの平均給料
#平均

SELECT deptno , AVG(sal)AS avg_sal
FROM emp
GROUP BY deptno
HAVING avg_sal > 1000
ORDER BY avg_sal DESC
LIMIT 0,2




