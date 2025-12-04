-- SQL request(s)​​​​​​‌‌‌​‌​‌‌​​‌‌‌​‌‌​‌‌‌‌​‌‌​ below
SELECT FirstName, LastName, City
FROM Customers
WHERE LEFT(City, 1) = 'R'
ORDER BY City