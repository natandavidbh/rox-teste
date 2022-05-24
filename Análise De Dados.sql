-- 1 - Análise de Dados 
SELECT  SalesOrderID, 
		COUNT(*) Pedidos
FROM [Sales].[SalesOrderDetail] (NOLOCK)
GROUP BY SalesOrderID
HAVING COUNT(*) > 3
ORDER BY 2 DESC

-- 2 - Análise de Dados 
SELECT  TOP 3 
		NAME Nome_Produto,
		SUM(SOD.OrderQty) Quantidade 
FROM [Sales].[SalesOrderDetail] SOD (NOLOCK)
INNER JOIN Sales.SpecialOfferProduct SOP (NOLOCK) ON SOD.SpecialOfferID = SOP.SpecialOfferID
INNER JOIN Production.Product  P (NOLOCK) ON SOD.PRODUCTID = P.PRODUCTID
GROUP BY NAME, DaysToManufacture
ORDER BY 2 DESC

-- 3 - Análise de Dados 
SELECT  CONCAT(FIRSTNAME,' ',LASTNAME) Nome_Cliente, 
		COUNT(*) BUSINESSENTITYID
FROM Person.Person P (NOLOCK)
INNER JOIN Sales.Customer C (NOLOCK) ON P.BusinessEntityID = C.PERSONID
INNER JOIN [Sales].[SalesOrderHeader] SOH (NOLOCK) ON C.CUSTOMERID = SOH.CUSTOMERID
GROUP BY CONCAT(FIRSTNAME,' ',LASTNAME), BUSINESSENTITYID
ORDER BY 2 DESC

-- 4 - Análise de Dados 
SELECT	ORDERDATE,
		SOD.PRODUCTID,
		SUM(SOD.OrderQty) QUANTIDADE
FROM [Sales].[SalesOrderHeader] SOH (NOLOCK)
INNER JOIN [Sales].[SalesOrderDetail] SOD (NOLOCK) ON SOH.SALESORDERID = SOD.SALESORDERID
INNER JOIN [Production].[Product] P (NOLOCK) ON P.PRODUCTID = SOD.PRODUCTID
GROUP BY ORDERDATE, SOD.PRODUCTID
ORDER BY 1

-- 5 - Análise de Dados 
SELECT	SalesOrderID, 
		OrderDate,
		TotalDue
FROM [Sales].[SalesOrderHeader] SOH (NOLOCK)
WHERE convert(date,orderdate) BETWEEN '2011-09-01' AND '2011-09-30'
AND TOTALDUE > 1000
ORDER BY 3 DESC







