-- Create staging table for raw data
CREATE TABLE CardsTransactions (
    pid INT,
    pname VARCHAR(50),
    age INT,
    gender CHAR(1),
    cardno CHAR(16),
    card_brand VARCHAR(30),
    card_type VARCHAR(20),
    mcc INT,
    merchant_city VARCHAR(50),
    tdate DATETIME,
    ttc INT,
    trans_type VARCHAR(30),
    amount DECIMAL(6,2)
);

-- Load data from the text file (Adjust path as needed)
BULK INSERT CardsTransactions
FROM 'C:\\data\\CardsTransactions.txt'  -- Adjust path!
WITH (
    FIRSTROW = 2,  -- Skip header
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n'
);