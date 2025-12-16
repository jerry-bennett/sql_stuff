-- SQL request(s)​​​​​​‌‌‌​‌‌​​‌​‌​​​​‌​​‌‌​‌​​​ below
SELECT
    --Total copies of dracula
    (SELECT
        COUNT(Books.Title)
    FROM
        Books
    WHERE
        Books.Title = 'Dracula')
-
    --Total copies of dracula currently checked out
    (SELECT
        COUNT(Books.Title)
    FROM
        Books
    JOIN Loans ON Loans.BookID = Books.BookID
    WHERE Books.Title = 'Dracula'
    AND Loans.ReturnedDate IS NULL)
AS AvailabelCopies