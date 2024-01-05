
SELECT name,sal,job
FROM emp
WHERE sal>2500

SELECT name,sal,job
FROM emp
WHERE job = 'manager'

# UNION ALL 二つのクエリを合併します,　重複を選別することができません

SELECT name,sal,job
FROM emp
WHERE sal>2500
UNION ALL
SELECT name,sal,job
FROM emp
WHERE job = 'manager'

#UNION　機能はUNION ALLと同じです,　重複を選別することができます

SELECT name,sal,job
FROM emp
WHERE sal>2500
UNION
SELECT name,sal,job
FROM emp
WHERE job = 'manager'