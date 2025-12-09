-- SQL request(s)​​​​​​‌‌‌​‌‌​​​​​‌​​​‌‌​​​​‌​‌​ below
INSERT INTO Customers (
    FirstName, 
    LastName,
    Email,
    Address,
    City,
    State,
    Phone,
    Birthday)
VALUES(
    'Anna',
    'Smith',
    'asmith@samoca.org',
    '479 Lapis Drive',
    'Memphis',
    'TN',
    '555-555-1212',
    '1973-07-21'
);
SELECT *
FROM Customers
ORDER BY CustomerID DESC
LIMIT 5