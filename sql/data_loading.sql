INSERT INTO Customers
SELECT DISTINCT pid, pname, age, gender FROM CardsTransactions;

INSERT INTO Cards
SELECT DISTINCT cardno, card_brand, card_type FROM CardsTransactions;

INSERT INTO Merchants
SELECT DISTINCT mcc, merchant_city FROM CardsTransactions;

SET DATEFIRST 1;

INSERT INTO Dateinfo
SELECT DISTINCT tdate, DATEPART(year, tdate), DATEPART(month, tdate),
       DATEPART(day, tdate), DATEPART(hour, tdate),
       DATEPART(quarter, tdate), DATEPART(week, tdate),
       DATEPART(dayofyear, tdate), DATEPART(dw, tdate)
FROM CardsTransactions;

INSERT INTO Transactions
SELECT DISTINCT ttc, trans_type FROM CardsTransactions;

INSERT INTO Facts
SELECT pid, cardno, mcc, tdate, ttc, SUM(amount)
FROM CardsTransactions
GROUP BY pid, cardno, mcc, tdate, ttc;
