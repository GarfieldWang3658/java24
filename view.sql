
CREATE VIEW emp_view01
AS
SELECT empno,name,job,deptno FROM emp;

DESC emp_view01

#VIEWを調べる
SHOW CREATE VIEW emp_view01

#viewを削除
DROP VIEW emp_view01

UPDATE emp_view01
SET job = 'manager'
WHERE empno = 7369

SELECT*FROM emp;
SELECT*FROM emp_view01;


CREATE VIEW emp_view02
AS
SELECT empno,name FROM emp_view01;

SELECT*FROM emp_view02;


SELECT*FROM salgrade

DROP VIEW emp_view03

CREATE VIEW emp_view03
AS
SELECT empno, name,dname,grade 
FROM emp,dept,salgrade
WHERE emp.deptno = dept.deptno AND(sal BETWEEN losal AND hisal);

 SELECT*FROM emp_view03

