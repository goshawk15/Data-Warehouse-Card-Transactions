SELECT COUNT(Transactions.ttc) AS total_transactions, SUM(amount) AS total_amount
FROM Transactions
JOIN Facts ON Transactions.ttc = Facts.ttc
JOIN Cards ON Facts.cardno = Cards.cardno
GROUP BY card_brand, card_type;