-- SQL request(s)​​​​​​‌‌‌​‌​‌‌‌​‌‌​‌​​​‌‌‌‌‌​‌‌ below
WITH DishDiscounts AS (
    -- Step 1: Calculate the DiscountPercent in an inner query/CTE
    SELECT 
        Name AS Item,
        Price AS OriginalPrice,
        CASE
            WHEN Price < 7 THEN 5
            WHEN Price >= 7 AND Price <= 10 THEN 10  
            WHEN Price > 10 THEN 15
        END AS DiscountPercent -- This column is now safely defined
    FROM 
        Dishes
)
-- Step 2: Use the result in the outer query to perform the division
SELECT 
    Item,
    OriginalPrice,
    CONCAT(DiscountPercent, '%') AS DiscountPercent,
    -- Perform the division using the previously defined column
    Round(OriginalPrice - (OriginalPrice * DiscountPercent / 100), 2) AS DiscountedPrice
FROM 
    DishDiscounts

ORDER BY Item ASC