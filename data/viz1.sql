USE AdventureWorks2025

Select * from Production.ProductCategory

Select * from Production.Product

Select * from Production.ProductSubcategory

 
Select 
    PC.Name as CategoryName, 
    COUNT(DISTINCT P.ProductID) as ProductCount
From Production.ProductCategory as PC
Inner Join Production.ProductSubcategory as PS ON PC.ProductCategoryID = PS.ProductCategoryID  
Inner Join Production.Product as P ON PS.ProductSubcategoryID = P.ProductSubcategoryID
GROUP BY PC.Name
ORDER BY ProductCount DESC; 
 
