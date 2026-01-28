-- SQL request(s)​​​​​​‌‌‌‌​​​​‌​​‌​​​​‌​​‌‌‌​​‌ below
SELECT 
    COUNT(Title) AS QTY,
    Title
FROM Books
WHERE Published >= 1890 AND Published <= 1899
AND
    (BookID NOT IN
        (SELECT
            BookID
        FROM
            Loans
        WHERE
            ReturnedDate IS NULL))
GROUP BY Title
ORDER BY 
    QTY ASC,
    Title ASC