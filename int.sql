CREATE TABLE t3(id TINYINT );
CREATE TABLE t4(id TINYINT UNSIGNED );
#TINYINT有符号-128～127，无符号 0～255
#字符集，校验规则，存储引擎 使用默认 
#如果没有指定usinged，则TINYINT就是有符号的。
INSERT INTO t3 VALUES(-128);#非常简单的添加语句。
INSERT INTO t4 VALUES(255);

SELECT * from t3
SELECT * from t4
