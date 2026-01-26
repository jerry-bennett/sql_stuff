-- SQL request(s)​​​​​​‌‌‌‌​​​​​​‌‌‌‌‌​‌​​​​‌‌​​ below
SELECT 
    Count(Loans.LoanID) AS LoanCount,
    FirstName,
    Email
FROM Patrons
JOIN Loans ON Loans.PatronID = Patrons.PatronID

WHERE Loans.LoanDate < '2025-01-01' AND Loans.LoanDate >= '2024-01-01'
GROUP BY Loans.PatronID
HAVING LoanCount = 1
ORDER BY FirstName