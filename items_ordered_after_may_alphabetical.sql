-- SQL request(s)​​​​​​‌‌‌​‌​‌‌‌​​‌​‌‌​‌​​​​​​‌​ below
SELECT
    O.OrderID,
    STRING_AGG(D.Name, ',') WITHIN GROUP (ORDER BY D.Name) AS Items
FROM Orders AS O

INNER JOIN OrdersDishes AS OD ON O.OrderID = OD.OrderID
INNER JOIN Dishes AS D ON OD.DishID = D.DishID

WHERE O.OrderDate >= '2022-05-01 00:00:00.0'
GROUP BY O.OrderID
ORDER BY O.OrderID ASC