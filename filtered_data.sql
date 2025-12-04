-- SQL request(s)​​​​​​‌‌‌​‌​‌‌​​‌‌‌​‌​‌​‌​​‌​‌‌ below
SELECT 
    DishId,
    Name,
    Price
FROM Dishes
WHERE Price >= 8 AND Price <= 9
ORDER BY Name ASC