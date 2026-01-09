-- SQL request(s)​​​​​​‌‌‌​‌‌‌​​‌​​​​​​​​​‌​​‌‌​ below
SELECT 
    DueDate,
    Patrons.FirstName,
    Patrons.Email,
    Books.Title
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
JOIN Books ON Books.BookID = Loans.BookID
WHERE Loans.ReturnedDate IS NULL
AND Loans.DueDate < '2024-09-01'

ORDER BY DueDate DESC