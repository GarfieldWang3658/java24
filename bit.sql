CREATE TABLE t5 (num BIT(8));
#1.BIT(m) m在1-64
#2.添加数据 范围 按照位数来确定 如 m=8，一个字节的范围就是0-255
#3.显示按照bit
#4.查询时仍然可以按照数字来查询
INSERT INTO t5 VALUES(2);
SELECT * FROM t5;
SELECT * FROM t5 WHERE num = 2;