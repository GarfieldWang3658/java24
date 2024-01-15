#現時点の分離レベル
SELECT @@tx_isolation

#システムの現時点分離レベル、全てのユーザー
SELECT @@global.tx_isolation

#現在の分離レベルを設定する
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED


#システムの分離レベルを設定する
SET GLOBAL TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

#mysqlの初期分離レベルは【REPEATABLE READ】リピータブルな読込み許可
#特別なニーズがない限り変更する必要がありません。

