-- SQL request(s)​​​​​​‌‌‌​‌​‌‌‌​​‌‌​​​‌‌‌​​‌​‌‌ below
SELECT 
    COUNT(OD.DishID) AS NumSold,
    CAST (O.OrderDate AS DATE) AS Day
FROM Orders AS O

INNER JOIN OrdersDishes AS OD ON OD.OrderID = O.OrderID
INNER JOIN Dishes AS D ON D.DishID = OD.DishID

WHERE D.Name = 'Handcrafted Pizza'

GROUP BY Day