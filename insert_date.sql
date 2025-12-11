-- SQL request(s)​​​​​​‌‌‌​‌‌​​​‌​​‌‌‌‌​​​‌‌‌​​‌ below
INSERT INTO Reservations (
    Date,
    PartySize,
    ReservationID,
    CustomerID
)
VALUES(
    '2025-04-12 18:00:00',
    7,
    2001,
    42
);
SELECT 
    Customers.FirstName,
    Customers.LastName,
    ReservationID,
    Date
FROM Reservations
INNER JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE ReservationID = 2001