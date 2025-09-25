-- Примеры аналитических запросов

-- 1. Топ-5 самых продаваемых товаров
SELECT p.product_name, SUM(ti.buying_count) as total_sold
FROM Transaction_Items ti
JOIN Product p ON ti.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- 2. Выручка по дням
SELECT DATE(transaction_date) as day, SUM(transaction_amount) as daily_revenue
FROM Sale_Transaction
GROUP BY DATE(transaction_date)
ORDER BY day DESC;

-- 3. Покупатели с самой высокой лояльностью
SELECT buyer_surname, buyer_name, loyalty, purchase_count
FROM Buyers
ORDER BY loyalty DESC
LIMIT 10;

-- 4. Товары, которых осталось мало на складе (менее 10 шт)
SELECT product_name, product_count
FROM Product
WHERE product_count < 10
ORDER BY product_count ASC;

-- 5. Обслуживание покупателей по кассирам
SELECT w.worker_surname, w.worker_name, COUNT(t.transaction_id) as transactions_count
FROM Sale_Transaction t
JOIN Workers w ON t.operator = w.worker_id
GROUP BY w.worker_id, w.worker_surname, w.worker_name
ORDER BY transactions_count DESC;
