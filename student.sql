CREATE TABLE student(
id INT NOT NULL DEFAULT 1,
name VARCHAR(20) NOT NULL DEFAULT' ',
chinese FLOAT NOT NULL DEFAULT 0.0,
english FLOAT NOT NULL DEFAULT 0.0,
math FLOAT NOT NULL DEFAULT 0.0);

INSERT INTO student(id,name,chinese,english,math)VALUES(1,'wangyang',89,78,90);
INSERT INTO student(id,name,chinese,english,math)VALUES(2,'wangmiduo',79,68,80);
INSERT INTO student(id,name,chinese,english,math)VALUES(3,'shenjiayan',69,88,50);
INSERT INTO student(id,name,chinese,english,math)VALUES(4,'shenjiayan',83,72,91);
INSERT INTO student(id,name,chinese,english,math)VALUES(5,'chengshenheng',81,76,70);
INSERT INTO student(id,name,chinese,english,math)VALUES(6,'tanaka',33,22,44);
INSERT INTO student(id,name,chinese,english,math)VALUES(7,'aoki',84,65,70);

SELECT*FROM student