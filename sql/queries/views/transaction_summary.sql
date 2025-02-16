CREATE VIEW transaction_summary WITH SCHEMABINDING AS
SELECT t_year, card_brand, gender, COUNT_BIG(*) AS total_transactions
FROM Dateinfo
JOIN Cards ON Cards.cardno = Facts.cardno
JOIN Customers ON Customers.pid = Facts.pid
JOIN Facts ON Dateinfo.tdate = Facts.tdate
GROUP BY t_year, card_brand, gender;

CREATE UNIQUE CLUSTERED INDEX my_index ON transaction_summary(t_year, card_brand, gender);
