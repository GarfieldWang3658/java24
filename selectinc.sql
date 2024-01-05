SELECT*FROM emp
SELECT*FROM salgrade
SELECT*FROM
#日付は直接比較することが可能です。
SELECT*FROM emp WHERE hiredate > '1992-01-01'
#LIKE  [%] 0~複数の文字を意味する、 [_]任意一つの文字を意味する。

SELECT name,sal FROM emp


SELECT `name`, sal FROM emp
WHERE `name` LIKE '__o%'

SELECT*FROM emp
WHERE mgr IS NULL;

DESC emp

#強化走査機能
#ORDER BYは自動的に小から大の順番＝ORDER BY deptno ASC
SELECT*FROM emp
ORDER BY sal


SELECT*FROM emp
ORDER BY deptno ASC, sal DESC/*DESCは大から小の順番*/









