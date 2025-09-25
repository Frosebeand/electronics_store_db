-- 1. Список сотрудников
CREATE VIEW Employees_List AS
SELECT *
FROM Workers;

-- 2. Список товаров в наличии
CREATE VIEW Available_Products AS
SELECT *
FROM Product
WHERE product_count > 0;

-- 3. Список купленных товаров за сегодня
CREATE VIEW Purchased_Products_Last_Day AS
SELECT p.product_name, ti.buying_count, t.transaction_date
FROM Sale_Transaction t
JOIN Transaction_Items ti ON t.transaction_id = ti.transaction_id
JOIN Product p ON ti.product_id = p.product_id
WHERE DATE(t.transaction_date) = CURRENT_DATE;

-- 4. Список купленных товаров за текущий месяц
CREATE VIEW Purchased_Products_Last_Month AS
SELECT p.product_name, ti.buying_count, t.transaction_date
FROM Sale_Transaction t
JOIN Transaction_Items ti ON t.transaction_id = ti.transaction_id
JOIN Product p ON ti.product_id = p.product_id
WHERE EXTRACT(MONTH FROM t.transaction_date) = EXTRACT(MONTH FROM CURRENT_DATE)
  AND EXTRACT(YEAR FROM t.transaction_date) = EXTRACT(YEAR FROM CURRENT_DATE);

-- 5. Список 10 самых частых покупателей
CREATE VIEW Top_Buyers AS
SELECT *
FROM Buyers
ORDER BY purchase_count DESC
LIMIT 10;
