#SELECT...LIMIT START,ROWS
#idの上り順でページを分けます
SELECT*FROM emp
ORDER BY empno
LIMIT 0,3
SELECT*FROM emp
ORDER BY empno
LIMIT 3,3
SELECT*FROM emp
ORDER BY empno
LIMIT 6,3

-- SELECT*FROM emp
-- ORDER BY empno
-- LIMIT /*　表示する記録数＊（ページ数−１）,ページごとに表示する記録数　*/


SELECT*FROM emp
ORDER BY empno DESC
LIMIT 10,5

SELECT*FROM emp
ORDER BY empno DESC
LIMIT 20,5