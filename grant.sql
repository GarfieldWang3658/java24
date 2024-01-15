#ユーザーを新規します
CREATE USER 'wangyang'@'localhost'IDENTIFIED BY '123'

#rootユーザーでtestdbを新規します

CREATE DATABASE testdb
CREATE TABLE news(
id INT,
content VARCHAR(100));

INSERT INTO news VALUES(100,'朝日新聞');

SELECT*FROM news

#ユーザーwangyangに閲覧とnews表の書き込む権限を与える
GRANT SELECT, INSERT
ON testdb.news
TO'wangyang'@'localhost'

#UPDATEの権限を与える

GRANT UPDATE
ON testdb.news
TO'wangyang'@'localhost'

#パスワードを設定する
SET PASSWORD FOR 'wangyang'@'localhost' = '123456'

#権限を回収する
REVOKE SELECT,UPDATE,INSERT ON testdb.news
FROM'wangyang'@'localhost'

DROP USER 'hsp_edu'@'localhost'
