USE AdventureWorks2025

SELECT * FROM Sales.SalesOrderHeader



SELECT
FORMAT(SOD.OrderDate, 'yyyy-MM') AS OrderMonth,
    SUM(SOD.SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader AS SOD
GROUP BY
    FORMAT(SOD.OrderDate, 'yyyy-MM')        
ORDER BY
    OrderMonth;