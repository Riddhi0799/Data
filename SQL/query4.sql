select cr.Name,DATEPART(yyyy,soh.DueDate) as [Year],soh.SubTotal,soh.Freight,soh.TaxAmt from Sales.SalesOrderHeader as soh
join sales.SalesTerritory as st on soh.TerritoryID=st.TerritoryID
join sales.SalesOrderDetail as sod on soh.SalesOrderID=sod.SalesOrderID
join Production.ProductCostHistory as pch on sod.ProductID=pch.ProductID
join Person.CountryRegion as cr on st.countryRegioncode=cr.CountryRegionCode
where (st.Name in(@)) and (st.[Group] in(@Country)) and (DATEPART(yyyy,soh.DueDate) in(@YEAR))

select * from sales.SalesTerritory

select distinct DATEPART(yyyy,soh.DueDate) from Sales.SalesOrderHeader as soh

SELECT distinct [Group] from sales.SalesTerritory

select name from sales.SalesTerritory where [Group] in(@Country)