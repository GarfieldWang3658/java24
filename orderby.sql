
#数学の成績を順番に並びます、
SELECT*FROM student ORDER BY math DESC;

#総合点数で順番に並びます
SELECT`name` , (chinese + english + math)AS total_score FROM student
ORDER BY total_score DESC;

SELECT`name` , (chinese + english + math)AS total_score FROM student
WHERE `name`LIKE'wang%'
ORDER BY total_score DESC;


