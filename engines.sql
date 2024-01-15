#表类型 和存储引擎
SHOW ENGINES
#innodb 
#１、トランザクション対応
#２、外部キー対応
#３、行ロック対応

#myisamストレージエンジン
CREATE TABLE t28(
id INT,
`name`VARCHAR(32))ENGINE MYISAM
#１、添加スピード速い
#２、外部キーとトランザクション不対応
#３、表ロック対応

START TRANSACTION
SAVEPOINT t1
INSERT INTO t28 VALUES(1,'jack');
SELECT*FROM t28
ROLLBACK TO t1　

#memory　
#1、データーはRAMに保存します、mysqlサービスを閉じ、データーを失っても、表のフォームは依然存在しています
#２、IOの読み取りの必要がないため執行スピードが速い
#３、捜索インデックスを対応しています（HASH表）

CREATE TABLE t29(
id INT,
`name`VARCHAR(32))ENGINE MEMORY
DESC t29
INSERT INTO t29
VALUES(1,'tom'),(2,'jack'),(3,'hsp');
SELECT*FROM t29

#ストレージ


