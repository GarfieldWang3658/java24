CREATE DATABASE shop_db
CREATE TABLE 商品goods(
【商品番号】goods_id INT PRIMARY KEY,
【商品名】goods_name VARCHAR(32)NOT NULL DEFAULT ' ',
【単価】uniprice DECIMAL(10,2) NOT NULL DEFAULT 0.0 
CHECK(【単価】uniprice >= 1.0 AND 【単価】uniprice <= 9999.99),
【商品種類】categroy INT NOT NULL DEFAULT 0,
【サプライヤー】provider VARCHAR(100) NOT NULL DEFAULT ' ');

CREATE TABLE 顧客customer(
【顧客番号】customer_id INT PRIMARY KEY,
【顧客名】customer_name VARCHAR(64)NOT NULL DEFAULT(' '),
【住所】address VARCHAR(200) NOT NULL DEFAULT ' ',
【メールアドレス】email VARCHAR(200)UNIQUE NOT NULL DEFAULT ' ',
【性別】sex ENUM('男','女') NOT NULL,
【身分証番号】card_id CHAR(18) UNIQUE NOT NULL DEFAULT ' ');

CREATE TABLE 購入記録purchase(
【注文番号】order_id INT UNSIGNED PRIMARY KEY,
【顧客番号】customer_id INT NOT NULL DEFAULT 0 ,
【商品番号】goods_id INT NOT NULL DEFAULT 0,
【購入個数】num INT NOT NULL DEFAULT 0,
FOREIGN KEY (【顧客番号】customer_id) REFERENCES 顧客customer(【顧客番号】customer_id),
FOREIGN KEY (【商品番号】goods_id) REFERENCES 商品goods(【商品番号】goods_id));

DESC 商品goods
DESC 顧客customer
DESC 購入記録purchase


