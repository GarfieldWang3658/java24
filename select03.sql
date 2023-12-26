SELECT*FROM student
WHERE math > 60 AND id > 3;

SELECT*FROM student
WHERE math > english;

SELECT*FROM student
WHERE (chinese+english+math)> 200 AND math < english AND `name`LIKE'shen%'

SELECT*FROM student
WHERE english >= 80 AND english <= 90;

SELECT*FROM student
WHERE math IN( 89,90,91);

SELECT*FROM student
WHERE math=89 OR math=90 OR math=91

SELECT*FROM student
WHERE name LIKE 'wang%'

SELECT*FROM student
WHERE math > 80 AND chinese > 80;

SELECT*FROM student
WHERE chinese >= 80 AND chinese <= 90;

SELECT*FROM student
WHERE chinese BETWEEN 80 AND 90;

SELECT*FROM student
WHERE (chinese+english+math) IN (189,190,191);

SELECT*FROM student
WHERE `name` LIKE 'shen%' OR `name`LIKE'wang%'

SELECT*FROM student
WHERE (chinese - math  )>10


