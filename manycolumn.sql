#複数列サブクエリ

SELECT deptno , job
FROM emp
WHERE name = 'smith'

SELECT*
FROM emp 
WHERE (deptno,job) = (
SELECT deptno , job
FROM emp
WHERE name = 'allen'
) AND name!='allen'

SELECT*FROM student

SELECT*
FROM student
WHERE (chinese,english,math)=(
SELECT chinese,english,math
FROM student
WHERE name = 'wangyang'
)