-- SQL request(s)​​​​​​‌‌‌​‌‌​​​‌​​‌‌‌‌​‌‌​‌‌‌‌​ below
INSERT INTO OrdersDishes(
    OrderID,
    DishID
)
VALUES
    (1001, (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
    (1001, (SELECT DishID FROM Dishes WHERE Name = 'Classic Burger')),
    (1001, (SELECT DishID FROM Dishes WHERE Name = 'Pomegranate Iced Tea'));
SELECT 
    O.OrderID AS OrderNum,
    C.LastName AS Name,
    COUNT(D.DishID) AS Items,
    SUM(D.Price) AS Total
FROM Orders AS O
JOIN OrdersDishes AS OD ON O.OrderID = OD.OrderID
JOIN Customers AS C ON O.CustomerID = C.CustomerID
JOIN Dishes AS D ON OD.DishID = D.DishID

WHERE O.OrderID = 1001
