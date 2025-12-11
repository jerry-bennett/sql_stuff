-- SQL request(s)​​​​​​‌‌‌​‌‌​​​‌​​‌‌‌​‌‌‌​‌‌​‌‌ below
SELECT 
    Date,
    Customers.FirstName,
    Customers.LastName,
    PartySize
FROM Reservations
INNER JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE SUBSTRING(Date, 1, 10) >= '2024-06-09'
AND SUBSTRING(Date, 1, 10) <= '2024-06-15'

ORDER BY Date ASC