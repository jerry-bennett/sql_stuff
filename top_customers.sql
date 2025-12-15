-- SQL request(s)​​​​​​‌‌‌​‌‌​​‌​‌​​​​​‌​‌​‌‌​‌​ below
SELECT 
    COUNT(*) AS OrderCount,
    C.FirstName,
    C.LastName,
    C.Email
FROM Orders
INNER JOIN Customers AS C ON C.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
HAVING COUNT(*) >= 15
ORDER BY OrderCount DESC