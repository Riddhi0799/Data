select DATEPART(yyyy,soh.DueDate) as [Calendar year],st.[group] as [sales territory group],cr.Name as [Sales Territory Country],cr.Name as [Sales Territory Region],sum(soh.TotalDue) as [Sales Amount]
from Sales.SalesOrderHeader as soh
join sales.SalesTerritory as st on soh.TerritoryID=st.TerritoryID
join sales.SalesOrderDetail as sod on soh.SalesOrderID=sod.SalesOrderID
join Production.ProductCostHistory as pch on sod.ProductID=pch.ProductID
join Person.CountryRegion as cr on st.countryRegioncode=cr.CountryRegionCode
where (DATEPART(yyyy,soh.DueDate) in (@Year))
group by DATEPART(yyyy,soh.DueDate),st.[group],cr.name
order by [calendar year]

--sales
select * from Sales.SalesOrderHeader as soh
join sales.SalesTerritory as st on soh.TerritoryID=st.TerritoryID
join sales.SalesOrderDetail as sod on soh.SalesOrderID=sod.SalesOrderID
join Production.ProductCostHistory as pch on sod.ProductID=pch.ProductID
join Person.CountryRegion as cr on st.countryRegioncode=cr.CountryRegionCode

--territory
select distinct [group] from Sales.SalesTerritory

--year
select distinct DATEPART(yyyy,duedate) as [calendar year] from Sales.SalesOrderHeader
order by [calendar year]

--country
select distinct cr.name as [sales territory country]
from Person.CountryRegion as cr
join Sales.SalesTerritory as st
on cr.CountryRegionCode=st.CountryRegionCode
where st.[group] in('Europe')

