-- SQL request(s)​​​​​​‌‌‌​‌‌​​‌​‌‌‌‌‌‌‌‌‌​​‌​​‌ below

-- title1 = The Picture of Dorian Gray, 11
-- title2 = Great Expectations, 93
--patronid = 50
INSERT INTO Loans(
    LoanID,
    BookID,
    PatronID,
    LoanDate,
    DueDate
)
VALUES(
    2002,
    93,
    50,
    '2024-08-25',
    '2024-09-08'
);
INSERT INTO Loans(
    LoanID,
    BookID,
    PatronID,
    LoanDate,
    DueDate
)
VALUES(
    2001,
    11,
    50,
    '2024-08-25',
    '2024-09-08'
);

SELECT 
    LoanID,
    Books.Title,
    DueDate,
    ReturnedDate
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
JOIN Books ON Books.BookID = Loans.BookID
WHERE Patrons.Email = 'jvaan@wisdompets.com'
ORDER BY LoanID DESC