#トランザクション
CREATE TABLE t27(
id INT,
`name` VARCHAR(32));
#トランザクション開始
START TRANSACTION;

#セーブポイントを設定
SAVEPOINT a;

#dml 操作を執行します
INSERT INTO t27 VALUES(100,'Tom');

SELECT*FROM t27;

SAVEPOINT b;
#dml 操作を執行します
INSERT INTO t27 VALUES(200,'Jack');

#セーブポイントbに戻ります
ROLLBACK TO b;

#セーブポイントaに戻ります
ROLLBACK TO a;

#トランザクションを初期状態に戻ります
ROLLBACK;

#COMMITはトランザクションの操作を実行します、セーブポイントがなくなり、戻ることができなくなります。






