CREATE TABLE Customers(
    pid INT PRIMARY KEY,
    pname VARCHAR(50),
    age INT,
    gender CHAR(1)
);
CREATE TABLE Cards(
    cardno CHAR(16) PRIMARY KEY,
    card_brand VARCHAR(30),
    card_type VARCHAR(20)
);
CREATE TABLE Merchants(
    mcc INT PRIMARY KEY,
    merchant_city VARCHAR(50)
);
CREATE TABLE Dateinfo(
    tdate DATETIME PRIMARY KEY,
    t_year INT,
    t_month INT,
    t_dayofmonth INT,
    t_hour INT,
    t_quarter INT,
    t_week INT,
    t_dayofyear INT,
    t_dayofweek INT
);
CREATE TABLE Transactions(
    ttc INT PRIMARY KEY,
    trans_type VARCHAR(30)
);
CREATE TABLE Facts(
    pid INT,
    cardno CHAR(16),
    mcc INT,
    tdate DATETIME,
    tcc INT,
    amount DECIMAL(6,2),
    PRIMARY KEY (pid, cardno, mcc, tdate, tcc),
    FOREIGN KEY (pid) REFERENCES Customers(pid),
    FOREIGN KEY (cardno) REFERENCES Cards(cardno),
    FOREIGN KEY (mcc) REFERENCES Merchants(mcc),
    FOREIGN KEY (tdate) REFERENCES Dateinfo(tdate),
    FOREIGN KEY (tcc) REFERENCES Transactions(ttc)
);
