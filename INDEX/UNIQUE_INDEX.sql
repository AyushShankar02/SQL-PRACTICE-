USE SalesDB
-- CREATE a unique index on Product table of Sales DataBase
CREATE UNIQUE NONCLUSTERED INDEX idx_Customers_Products
ON Sales.Products (Product)