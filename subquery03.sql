
 
SELECT deptno,AVG(sal)
FROM emp GROUP BY deptno


SELECT `name`,sal,temp.avg_sal,emp.deptno
FROM emp ,(
SELECT deptno , AVG(sal)AS avg_sal
FROM emp 
GROUP BY deptno
)temp
WHERE emp.deptno = temp.deptno AND emp.sal>temp.avg_sal

SELECT `name`,sal,temp.max_sal,emp.deptno
FROM emp ,(
SELECT deptno ,MAX(sal)AS max_sal
FROM emp 
GROUP BY deptno
)temp
WHERE emp.deptno = temp.deptno AND emp.sal=temp.max_sal

 
SELECT*FROM dept;
#temp。* は該当表の全てを表ます。
#複数の表を結合したクエリの中、列名が重複していない時にしか列名を使えません。
SELECT dname, dept.deptno,loc,`count`
FROM dept,(
SELECT deptno,COUNT(deptno)AS `count`
FROM emp 
GROUP BY deptno
)temp
WHERE dept.deptno = temp.deptno
)


