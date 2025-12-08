-- SQL request(s)​​​​​​‌‌‌​‌​‌‌‌​‌‌​‌​​​‌‌‌‌‌​‌‌ below
WITH DishDiscounts AS (
    SELECT 
        Name AS Item,
        Price AS OriginalPrice,
        CASE
            WHEN Price < 7 THEN 5
            WHEN Price >= 7 AND Price <= 10 THEN 10  
            WHEN Price > 10 THEN 15
        END AS DiscountPercent 
    FROM 
        Dishes
)
SELECT 
    Item,
    OriginalPrice,
    CONCAT(DiscountPercent, '%') AS DiscountPercent,
    Round(OriginalPrice - (OriginalPrice * DiscountPercent / 100), 2) AS DiscountedPrice
FROM 
    DishDiscounts

ORDER BY Item ASC