SELECT t_year, gender, age, SUM(amount) AS total_amount
FROM Facts
JOIN Customers ON Customers.pid = Facts.pid
JOIN Dateinfo ON Facts.tdate = Dateinfo.tdate
JOIN Transactions ON Transactions.ttc = Facts.ttc
WHERE trans_type = 'Online Transaction'
GROUP BY ROLLUP(t_year, gender, age);