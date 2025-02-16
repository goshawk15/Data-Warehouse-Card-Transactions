SELECT t_year, card_brand, gender, SUM(amount) AS total_amount
FROM Dateinfo
JOIN Cards ON Cards.cardno = Facts.cardno
JOIN Customers ON Customers.pid = Facts.pid
JOIN Facts ON Dateinfo.tdate = Facts.tdate
GROUP BY CUBE(t_year, card_brand, gender);
