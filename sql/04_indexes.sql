-- Индексы для внешних ключей
CREATE INDEX idx_transaction_items_transaction_id ON Transaction_Items (transaction_id);
CREATE INDEX idx_transaction_items_product_id ON Transaction_Items (product_id);
CREATE INDEX idx_transaction_buyer ON Sale_Transaction (buyer);
CREATE INDEX idx_transaction_operator ON Sale_Transaction (operator);
CREATE INDEX idx_suppliers_delivered_product ON Suppliers (delivered_product);

-- Дополнительные индексы для часто используемых запросов
CREATE INDEX idx_transaction_date ON Sale_Transaction (transaction_date);
CREATE INDEX idx_product_name ON Product (product_name);
CREATE INDEX idx_worker_position ON Workers (worker_position);
