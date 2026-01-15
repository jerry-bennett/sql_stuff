SELECT 
    Orders.OrderID,
    Customers.FirstName,
    OrdersDishes.OrdersDishesID,
    Dishes.Name
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.OrderID
INNER JOIN OrdersDishes ON OrdersDishes.OrderID = Orders.OrderID
INNER JOIN Dishes ON Dishes.DishID = OrdersDishes.DishID