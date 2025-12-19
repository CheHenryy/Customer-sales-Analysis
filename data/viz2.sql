USE AdventureWorks2025

select * from Production.ProductCategory

select * from Production.ProductSubcategory

select * from Production.Product

select * from sales.SalesOrderDetail


SELECT 
    PC.Name AS CategoryName, 
    SOD.OrderQty AS QuantitySold,
    SOD.UnitPrice AS UnitPrice,
    SOD.OrderQty * SOD.UnitPrice AS TotalSales,
    COUNT(DISTINCT P.ProductID) as ProductCount,
    SOD.LineTotal AS LineTotal
FROM Production.ProductCategory AS PC 
INNER JOIN Production.ProductSubcategory AS PS ON PC.ProductCategoryID = PS.ProductCategoryID  
INNER JOIN Production.Product AS P ON PS.ProductSubcategoryID = P.ProductSubcategoryID
INNER JOIN sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
GROUP BY PC.Name
ORDER BY ProductCount DESC;
 