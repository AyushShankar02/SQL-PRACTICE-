USE AdventureWorksDW2022;
--HEAP STRUCTURE 
SELECT *
INTO FactInternetSales_HP
FROM FactInternetSales

--ROW STRUCTURE
SELECT * 
INTO FactInternetSales_RS
FROM FactInternetSales

CREATE CLUSTERED INDEX idx_FactInternetSales_RS_PK
on FactInternetSales_RS(SalesOrderNumber,SalesOrderLineNUmber)

--Columnstore STRUCTURE
SELECT * 
INTO FactInternetSales_CS
FROM FactInternetSales

CREATE CLUSTERED  COLUMNSTORE INDEX idx_FactInternetSales_CS_PK
ON FactInternetSales_CS

