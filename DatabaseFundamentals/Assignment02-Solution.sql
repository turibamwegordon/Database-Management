SELECT P.ProductID, P.ProductName, PT.ProductTypeName
FROM tblPRODUCT P
JOIN tblPRODUCT_TYPE PT
	ON P.ProductTypeID = PT.ProductTypeID
WHERE P.ProductTypeID IN
(SELECT PRODUCTTYPEID FROM tblPRODUCT_TYPE
WHERE ProductTypeName IN ('Accessories', 'Electric Guitar'))
ORDER BY PT.ProductTypeName



SELECT P.ProductID, P.ProductName, PT.ProductTypeName
FROM tblPRODUCT P, tblPRODUCT_TYPE PT
WHERE P.ProductTypeID = PT.ProductTypeID
AND ProductTypeName IN ('Accessories', 'Electric Guitar')
ORDER BY PT.ProductTypeName


SELECT Top 25 (C.CustID), C.CustFname, CustLname, SUM(LI.Qty * PV.Price) as TotalDollars
FROM tblCUSTOMER C
JOIN tblORDER O
ON C.CustID = O.CustID
JOIN tblLINE_ITEM LI
ON O.OrderID = LI.OrderID
JOIN tblPRODUCT_VENDOR PV
ON LI.ProductVendorID = PV.ProductVendorID
WHERE C.CustState = 'Texas, TX'
GROUP BY C.CustID,C.CustFname, CustLname
ORDER BY TotalDollars Desc


SELECT C.CustState, Count(*) AS NumberOrders
FROM tblORDER O
JOIN tblCUSTOMER C
ON O.CustID = C.CustID
WHERE O.OrderDate >='5/1/2001' AND O.OrderDate <='7/31/2005'
AND (C.CustState = 'Oregon, OR'
OR C.CustState = 'Montana, MT'
OR C.CustState = 'New Mexico, NM')
GROUP BY C.CustState
--HAVING COUNT(*) > 20
ORDER BY NumberOrders Desc


SELECT C.CustState, Count(*) AS NumberOrders
FROM tblORDER O
JOIN tblCUSTOMER C
ON O.CustID = C.CustID
WHERE O.OrderDate >='5/1/2001' AND O.OrderDate <='7/31/2005'
AND C.CustState IN ('Oregon, OR','Montana, MT','New Mexico, NM')
GROUP BY C.CustState
--HAVING COUNT(*) > 200
ORDER BY NumberOrders Desc

SELECT V.VendorName,P.ProductName 
FROM tblPRODUCT P, tblPRODUCT_TYPE PT, tblPRODUCT_VENDOR PV, tblVENDOR V
WHERE P.ProductTypeID = PT.ProductTypeID
AND P.ProductID = PV.ProductID
AND PV.VendorID = V.VendorID
AND PT.ProductTypeName IN ('Book','Accessory')
ORDER BY V.VendorName, P.ProductName

-- Server type: Database Engine
-- Server name: IS-HAY01.ischool.uw.edu
-- Authentication: SQL Server Authentication
-- Login: Dataman
-- Password: GoHuskies!