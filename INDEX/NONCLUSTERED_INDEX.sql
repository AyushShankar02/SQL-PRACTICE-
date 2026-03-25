USE SalesDB;
CREATE NONCLUSTERED INDEX idx_DBCustomers_LastName
ON Sales.DBcustomers (LastName)


CREATE INDEX idx_DBCustomers_FirstName
ON Sales.DBcustomers (FirstName)
