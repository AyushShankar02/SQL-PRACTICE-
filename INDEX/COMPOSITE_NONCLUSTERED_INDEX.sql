USE SalesDB

CREATE INDEX idx_DBCustomers_CountryScore
ON Sales.DBCustomers(Country,Score)