#自己結合
#一つの表を二つとして使う
#従業員と上司はemp表のmgr列で関連します。
#列名が曖昧の場合、別名を指定することができます、列名　AS　列の別名
SELECT worker.`name` AS'员工名',boss.`name` AS'上级名'
FROM emp worker , emp boss
WHERE worker.mgr = boss.empno


