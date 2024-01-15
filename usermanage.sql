
#ユーザーを新規
# 'hsp_edu'@'localhost' ユーザーの情報を表示ます、hsp_eduはユーザー名、localhostは登録IP
#IDENTIFIED BY でパスワードを設定します、Mysql.suer表に保存する時にパスワードは暗号化された後のものです

CREATE USER 'hsp_edu'@'localhost' IDENTIFIED BY '123456'

SELECT MD5("123456")

SELECT `host`,`user`,authentication_string
FROM mysql.user;

#ユーザーを削除します
DROP USER 'hsp_edu'@'localhost'

#パスワードの変更
SET MD5 = MD5('123456')

#他のユーザーのパスワードを変更するには　権限が必要になります。

SET PASSWORD FOR 'hsp_edu'@'localhost' = '654321'

