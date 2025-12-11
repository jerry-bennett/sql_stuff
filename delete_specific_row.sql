-- SQL request(s)​​​​​​‌‌‌​‌‌​​​​‌​‌‌‌​‌‌​‌​​​‌‌ below
DELETE FROM Reservations
WHERE CustomerID = 70
AND Date = '2024-05-15 14:00:00.0';

SELECT
    Reservations.ReservationID,
    Reservations.Date,
    Customers.FirstName,
    Customers.LastName
FROM Reservations

INNER JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Reservations.CustomerID = 70
AND SUBSTRING(Reservations.Date, 1, 4) = '2024'