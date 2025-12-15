-- SQL request(s)​​​​​​‌‌‌​‌‌​​​‌‌​‌‌‌​​​​​‌​​​​ below
SELECT 
    D.Name AS Item,
    COUNT(*) AS Frequency
FROM Customers
INNER JOIN 
    Dishes AS D ON Customers.FavoriteDish = D.DishID
GROUP BY Item
ORDER BY Frequency DESC
LIMIT 2