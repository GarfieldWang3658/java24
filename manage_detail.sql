#ユーザーを新規する時、hostを指定しない場合、％になります、％表示は全てのIPとに接続される事が可能だという権限を意味します
CREATE USER jack

SELECT `host`,`user` FROM mysql.user

#ユーザーを新規する時、IPの区間を指定する事が可能です
#CREATE USER 'smith' @ '192.168.1.%'　の場合　ユーザーsmithは192.168.1.＊のIPでmysqlをログインすることができます。

CREATE USER 'smith'@'192.168.1.%'

#ユーザーを削除する時、HOSTは％でない限り、'ユーザー名'＠'HOST値'　　を明確しなければなりません。
#DROP USER jack = DROP USER 'jack'@'%'
DROP USER jack

DROP USER 'smith'@'192.168.1.%'