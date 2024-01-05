#主キー PRIMARY KEY

CREATE TABLE t17(
id INT PRIMARY KEY,
`name` VARCHAR(32),
email VARCHAR(32));

INSERT INTO t17
VALUES(1,'jack','123456789@qq.com');

INSERT INTO t17
VALUES(2,'tom','123456789@qq.com');
#主キーは重複することができません
INSERT INTO t17
VALUES(1,'anna','123456789@qq.com');
#主キーはNULLとして設定することができません。
INSERT INTO t17
VALUES(NULL,'anna','123456789@qq.com');

#一つのテーブルは一つの主キーしか存在する事ができません
CREATE TABLE t18(
id INT PRIMARY KEY,
`name` VARCHAR(32)PRIMARY KEY,
email VARCHAR(32));

#複合主キー idとnameを複合主キーにします
CREATE TABLE t18(
id INT,
`name` VARCHAR(32),
email VARCHAR(32),
PRIMARY KEY(id,`name`)
);

INSERT INTO t18
VALUES(1,'jack','123456789@qq.com');
#可能
INSERT INTO t18
VALUES(1,'tom','123456789@qq.com');

INSERT INTO t18
VALUES(1,'jack','123qq.com');

#主キー 他の表現
CREATE TABLE t19(
id INT,
`name` VARCHAR(32)PRIMARY KEY,/*主キーにしたい列の後ろに追加は可能 */
email VARCHAR(32),
);

CREATE TABLE t20(
id INT,
`name` VARCHAR(32),
email VARCHAR(32),
PRIMARY KEY(`name`)　/*主キーを最後にして、主キーしたい列をカスタマイズする事が可能　*/
);

DESC t18 /* 主キーの状況を調べることが可能、制約を表示する事が可能 */



