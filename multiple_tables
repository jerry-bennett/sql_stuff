SELECT 
    Reservations.Date,
    Reservations.PartySize,
    Customers.FirstName, 
    Customers.LastName,
    Customers.Email
FROM Customers
INNER JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
ORDER BY Reservations.Date DESC
LIMIT 2;