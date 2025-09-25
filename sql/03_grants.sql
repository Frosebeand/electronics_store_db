-- Права для руководства
GRANT SELECT, INSERT, UPDATE, DELETE ON Workers TO leaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON Product TO leaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON Buyers TO leaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON Sale_Transaction TO leaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON Transaction_Items TO leaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON Suppliers TO leaders;

-- Права для менеджеров по закупкам
GRANT SELECT, INSERT, UPDATE, DELETE ON Product TO manager;
GRANT SELECT ON Sale_Transaction TO manager;
GRANT SELECT ON Transaction_Items TO manager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Suppliers TO manager;

-- Права для бухгалтеров
GRANT SELECT, INSERT, UPDATE, DELETE ON Workers TO accountant;
GRANT SELECT ON Sale_Transaction TO accountant;
GRANT SELECT ON Transaction_Items TO accountant;
GRANT SELECT ON Suppliers TO accountant;

-- Права для кассиров
GRANT SELECT ON Product TO operators;
GRANT SELECT ON Buyers TO operators;
GRANT SELECT ON Sale_Transaction TO operators;
GRANT SELECT ON Transaction_Items TO operators;

-- Права для аналитиков
GRANT SELECT ON Workers TO analytics;
GRANT SELECT ON Product TO analytics;
GRANT SELECT ON Buyers TO analytics;
GRANT SELECT ON Sale_Transaction TO analytics;
GRANT SELECT ON Transaction_Items TO analytics;
GRANT SELECT ON Suppliers TO analytics;
