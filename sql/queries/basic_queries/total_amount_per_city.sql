SELECT merchant_city, SUM(amount) AS total_amount
FROM Merchants
JOIN Facts ON Merchants.mcc = Facts.mcc
GROUP BY merchant_city
ORDER BY merchant_city ASC;