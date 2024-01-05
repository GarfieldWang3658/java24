#サブクエリ

#
SELECT deptno
FROM emp
WHERE name = 'smith'

SELECT*
FROM emp
WHERE deptno = (
SELECT deptno
FROM emp
WHERE name = 'smith'
);

SELECT `name`,job,sal,deptno
FROM emp
WHERE job in (

SELECT DISTINCT job
FROM emp
WHERE deptno = 10
) AND deptno != 10


SELECT goods_id,goods_name,goods_price
FROM ecs_goods

SELECT goods_id,MAX(goods_price)
FROM ecs_goods
GROUP BY goods_id

SELECT  ecs_goods.goods_id,goods_name,ecs_goods.goods_price
FROM(
SELECT goods_id,MAX(goods_price)AS max_price
FROM ecs_goods
GROUP BY goods_id
)temp , ecs_goods
WHERE temp.goods_id = ecs_goods.goods_id
AND temp.max_price = ecs_goods.goods_price




