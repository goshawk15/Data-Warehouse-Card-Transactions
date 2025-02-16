SELECT t_year, card_brand, COUNT(*) FROM transaction_summary GROUP BY t_year, card_brand;
SELECT t_year, gender, COUNT(*) FROM transaction_summary GROUP BY t_year, gender;
SELECT card_brand, gender, COUNT(*) FROM transaction_summary GROUP BY card_brand, gender;
SELECT t_year, COUNT(*) FROM transaction_summary GROUP BY t_year;
SELECT card_brand, COUNT(*) FROM transaction_summary GROUP BY card_brand;
SELECT gender, COUNT(*) FROM transaction_summary GROUP BY gender;
SELECT COUNT(*) FROM transaction_summary;