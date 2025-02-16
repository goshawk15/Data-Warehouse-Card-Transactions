SELECT SUM(amount) AS total_amount
FROM Transactions
JOIN Facts ON Transactions.ttc = Facts.ttc
JOIN Dateinfo ON Facts.tdate = Dateinfo.tdate
WHERE t_year = 2019
GROUP BY t_quarter;