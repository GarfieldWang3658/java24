CREATE TABLE dept(
deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
dname VARCHAR(20) NOT NULL DEFAULT'',
loc VARCHAR(13) NOT NULL DEFAULT'');

INSERT INTO dept VALUES(10,'accounting','new york'),(20,'research','dallas'),(30,'sales','chicago'),(40,'operations','boston');

SELECT*FROM dept;

CREATE TABLE emp(
empno MEDIUMINT UNSIGNED NOT null DEFAULT 0,
name VARCHAR(20)NOT NULL DEFAULT'',
job VARCHAR(9)NOT NULL DEFAULT'',
mgr MEDIUMINT UNSIGNED,
hiredate DATE NOT NULL,
sal DECIMAL(7,2) NOT NULL,
comm DECIMAL(7,2),/*ボーナス*/
deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0/*部署番号*/);

INSERT INTO emp VALUES
(7369,'smith','clerk',7902,'1990-12-17',800.00,null,20),
(7499,'allen','salesman',7698,'1992-2-20',1600.00,300.00,30),
(7521,'ward','salesman',7698,'1991-2-22',1250.00,500.00,30),
(7566,'jones','manager',7839,'1991-2-22',2975.00,null,20),
(7654,'martin','salesman',7698,'1991-4-2',1250.00,1400.00,30),
(7698,'blake','manager',7839,'1991-9-28',2850.00,null,30),
(7782,'clark','manager',7839,'1991-5-1',2450.00,null,10),
(7788,'scott','analyst',7566,'1991-6-9',3000.00,null,20),
(7839,'king','president',NULL,'1997-4-19',5000.00,null,10),
(7844,'turner','salesman',7698,'1991-11-17',1500.00,null,30),
(7900,'james','clerk',7698,'1991-9-8',950.00,null,30),
(7902,'ford','analyst',7566,'1991-12-3',3000.00,null,20),
(7934,'miller','clerk',7782,'1992-1-23',1300.00,null,10);

SELECT*FROM emp
DROP TABLE emp

CREATE TABLE salgrade(
grade MEDIUMINT UNSIGNED NOT NULL DEFAULT(0),
losal DECIMAL(17,2)NOT NULL,
hisal DECIMAL(17,2)NOT NULL);

INSERT INTO salgrade VALUES(1,700,1200);
INSERT INTO salgrade VALUES(2,1201,1400);
INSERT INTO salgrade VALUES(3,1001,2000);
INSERT INTO salgrade VALUES(4,2001,3000);
INSERT INTO salgrade VALUES(5,3001,9999);

SELECT*FROM salgrade

#GROUP BY は調査結果をグループ分け統計します

#HAVINGで各グループに制限をかけて選別します
#平均収入と最高収入でデーターをグループ分けてから調べます
SELECT AVG(sal) , MAX(sal) , deptno FROM emp GROUP BY deptno;

#職業で平均収入と最高収入をグループ分け
SELECT AVG(sal),MIN(sal),deptno,job FROM emp GROUP BY deptno,job;

#平均収入2000以下の部署
#各部署の平均給料と部署番号
SELECT AVG(sal),deptno
FROM emp GROUP BY deptno;

SELECT AVG(sal)AS avg_sal,deptno
FROM emp GROUP BY deptno HAVING avg_sal<2000;

