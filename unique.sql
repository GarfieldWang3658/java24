
# UNIQUE 唯一　
CREATE TABLE t21(
id INT UNIQUE,
`name` VARCHAR(32),
email VARCHAR(32));

INSERT INTO t21
VALUES(1,'jack','123qq.com');
#id INT UNIQUE, の原因で　下記のコートはエラーになります

INSERT INTO t21
VALUES(1,'tom','123456789@qq.com');

#　UNIQUEを使用する時にNOT NULL を指定していなければ、UNIQUEのフィールドにNULLを多数設定する事ができます
INSERT INTO t21
VALUES(NULL,'tom','123456789@qq.com'); #複数追加可能

#UNIQUE NOT NULL の場合は　PRIMARY KEYと同じ効果になります。

#一つのテーブルに複数のUNIQUEを設定する事が可能です









