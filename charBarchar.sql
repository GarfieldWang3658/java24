#演示字符串类型使用 char Varchar
-- 固定长度字符串最大255字符
-- VARCHAR（size） 0-65535
-- 可变长度字符串，最大65532字节，utf8编码最大21844字符，1-3个字节用语记录大小。(65535-3)/3=21844
#  
CREATE TABLE t9(`name` CHAR(255));
DROP TABLE t10;
CREATE TABLE t10(`name` VARCHAR(32766)) CHARSET gbk;