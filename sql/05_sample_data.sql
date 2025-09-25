-- Добавление тестовых данных в таблицу Сотрудники
INSERT INTO Workers (worker_id, worker_surname, worker_name, worker_number, worker_position, worker_salary) VALUES
(1, 'Иванов', 'Петр Сергеевич', '+7-999-123-45-67', 'Кассир', 50000),
(2, 'Петрова', 'Мария Ивановна', '+7-999-123-45-68', 'Старший кассир', 60000),
(3, 'Сидоров', 'Алексей Владимирович', '+7-999-123-45-69', 'Менеджер', 80000);

-- Добавление тестовых данных в таблицу Товары
INSERT INTO Product (product_id, product_name, product_price, product_count) VALUES
(1, 'iPhone 13 128GB черный', 79990, 15),
(2, 'Samsung Galaxy S21 256GB', 69990, 8),
(3, 'Наушники Sony WH-1000XM4', 29990, 25),
(4, 'Ноутбук ASUS VivoBook 15', 54990, 5),
(5, 'Планшет iPad Air 64GB', 49990, 12);

-- Добавление тестовых данных в таблицу Покупатели
INSERT INTO Buyers (card_number, buyer_surname, buyer_name, buyer_number, purchase_count, loyalty) VALUES
(1001, 'Смирнов', 'Дмитрий Алексеевич', '+7-915-111-22-33', 8, 150),
(1002, 'Козлова', 'Елена Викторовна', '+7-915-222-33-44', 15, 300),
(1003, 'Николаев', 'Андрей Петрович', '+7-915-333-44-55', 3, 50);

-- Добавление тестовых данных в таблицу Транзакции
INSERT INTO Sale_Transaction (transaction_id, transaction_date, buyer, operator, transaction_amount) VALUES
(101, '2024-01-15 10:30:00', 1001, 1, 79990),
(102, '2024-01-15 14:20:00', 1002, 2, 149980),
(103, '2024-01-16 11:15:00', NULL, 1, 29990);

-- Добавление тестовых данных в таблицу ПозицииТранзакции
INSERT INTO Transaction_Items (transaction_item_id, transaction_id, product_id, buying_count) VALUES
(1, 101, 1, 1),  -- iPhone 13
(2, 102, 2, 1),  -- Samsung Galaxy
(3, 102, 3, 1),  -- Наушники Sony
(4, 103, 3, 1);  -- Наушники Sony

-- Добавление тестовых данных в таблицу Поставщики
INSERT INTO Suppliers (supplier_name, supplier_number, delivered_product, purchase_price) VALUES
('ООО "ЭлектроСнаб"', '+7-495-111-22-33', 1, 65000),
('АО "ГаджетТрейд"', '+7-495-222-33-44', 2, 55000),
('ИП "ТехноМир"', '+7-495-333-44-55', 3, 25000);
