
#1.插入的输入必须与字段的数据类型相同

INSERT INTO `goods` (ID,goods—_name,price) VALUES(19,'XIAOMI',2550);

#2.数据的长度应该在规定范围内，例如：长度设定为40的情况下，不能加入80的数据
INSERT INTO `goods` (ID,goods—_name,price) VALUES(19,'vivovivoviovioivpvivov',2550);
#3.在values中列的数据位置必须与被加入的列的排列位置相对应。
INSERT INTO `goods` (ID,goods—_name,price) VALUES(19,'XIAOMI',2550);
#4.字符和日期类型数据应包含在单引号中

#5.列可以插入空值，前提是该字段允许为空
INSERT INTO `goods` (ID,goods—_name,price) VALUES(19,'XIAOMI',NULL);
#6.可以添加多条记录，添加形式： INSERT INTO tabe_name（列名。。）values（），（），（）
INSERT INTO `goods` (ID,goods—_name,price) VALUES(19,'hongmi',2550),(13,'oppo',2550),(16,'vivo',2550);

#7.如果给表中所有的字段添加数据，可以补血字段名称
INSERT INTO `goods`  VALUES(33,'sony',4500);

#8.使用默认值，当不给某字段值时，如果有默认值就会添加默认值，否则会报错。
#如果添加某个列，没有指定not null那么当添加数据时候没有给定制则会默认给null
INSERT INTO `goods` (ID,goods—_name) VALUES(19,'XIAOMI');

SELECT*FROM goods;



CREATE TABLE `goods2`(

id INT,
goods_name VARCHAR(10),
price DOUBLE NOT NULL DEFAULT 100);

INSERT INTO `goods2` (ID,goods_name) VALUES(19,'XIAOMI');

SELECT*FROM goods2







