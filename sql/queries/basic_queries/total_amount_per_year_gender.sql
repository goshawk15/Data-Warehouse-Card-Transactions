SELECT t_year, gender, SUM(amount) AS total_amount
FROM Customers
JOIN Facts ON Customers.pid = Facts.pid
JOIN Dateinfo ON Facts.tdate = Dateinfo.tdate
GROUP BY t_year, gender
ORDER BY t_year DESC;