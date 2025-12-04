-- SQL request(s)​​​​​​‌‌‌​‌​‌‌​​‌‌‌​‌​‌​‌‌​​‌‌‌ below
SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Count(OrderId) AS CustomerOrderCount
FROM Customers

INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
ORDER BY CustomerOrderCount DESC
LIMIT 3;