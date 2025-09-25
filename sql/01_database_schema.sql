-- Создание таблицы Сотрудники
CREATE TABLE Workers (
    worker_id NUMERIC(10) PRIMARY KEY,
    worker_surname VARCHAR(30) NOT NULL,
    worker_name VARCHAR(30) NOT NULL,
    worker_number VARCHAR(20) NOT NULL,
    worker_position VARCHAR(20) NOT NULL,
    worker_salary NUMERIC(6) NOT NULL CHECK (worker_salary > 0)
);

-- Создание таблицы Товары
CREATE TABLE Product (
    product_id NUMERIC(10) PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    product_price NUMERIC(6) NOT NULL CHECK (product_price > 0),
    product_count NUMERIC(10) NOT NULL CHECK (product_count >= 0)
);

-- Создание таблицы Покупатели
CREATE TABLE Buyers (
    card_number NUMERIC(10) PRIMARY KEY,
    buyer_surname VARCHAR(30) NOT NULL,
    buyer_name VARCHAR(30) NOT NULL,
    buyer_number VARCHAR(20) NOT NULL,
    purchase_count NUMERIC(10) NOT NULL,
    loyalty NUMERIC(6) NOT NULL CHECK (loyalty >= 0)
);

-- Создание таблицы Транзакции (переименовано из Transaction т.к. это зарезервированное слово)
CREATE TABLE Sale_Transaction (
    transaction_id NUMERIC(10) PRIMARY KEY,
    transaction_date TIMESTAMP NOT NULL,
    buyer NUMERIC(10) REFERENCES Buyers(card_number), -- Может быть NULL если покупатель без карты
    operator NUMERIC(10) NOT NULL REFERENCES Workers(worker_id),
    transaction_amount NUMERIC(10) NOT NULL CHECK (transaction_amount > 0)
);

-- Создание таблицы ПозицииТранзакции
CREATE TABLE Transaction_Items (
    transaction_item_id NUMERIC(10) PRIMARY KEY,
    transaction_id NUMERIC(10) NOT NULL REFERENCES Sale_Transaction(transaction_id),
    product_id NUMERIC(10) NOT NULL REFERENCES Product(product_id),
    buying_count NUMERIC(10) NOT NULL CHECK (buying_count > 0)
);

-- Создание таблицы Поставщики
CREATE TABLE Suppliers (
    supplier_name VARCHAR(50) PRIMARY KEY, -- Исправлено на VARCHAR (название компании не может быть числом)
    supplier_number VARCHAR(20) NOT NULL,
    delivered_product NUMERIC(10) NOT NULL REFERENCES Product(product_id),
    purchase_price NUMERIC(10) NOT NULL CHECK (purchase_price > 0)
);
