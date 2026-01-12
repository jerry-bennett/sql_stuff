-- SQL request(s)​​​​​​‌‌‌​‌‌‌​‌​‌‌‌​‌‌​​‌‌‌‌‌‌​ below
INSERT INTO Loans(ReturnedDate) VALUES ('2024-09-09');
INSERT INTO Loans(ReturnedDate) VALUES ('2024-09-09');
INSERT INTO Loans(ReturnedDate) VALUES ('2024-09-09');

INSERT INTO Books(Barcode) VALUES ('6434968624');
INSERT INTO Books(Barcode) VALUES ('5677520613');
INSERT INTO Books(Barcode) VALUES ('8730298424');

SELECT 
    ReturnedDate,
    Books.Barcode
FROM Loans
ORDER BY ReturnedDate DESC
LIMIT 8;
