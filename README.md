### Cards Transactions Data Warehouse

This project involves designing and implementing a data warehouse for analyzing bank card transactions. The dataset consists of 4,386,859 transaction records from 2015 to 2020, and the goal is to generate statistical insights into transaction patterns.
📂 Project Structure

    Database Schema: Star schema with fact and dimension tables.
    Data Ingestion: Bulk insert from CardsTransactions.txt.
    SQL Queries: Analytical queries covering transaction trends by city, card type, gender, and time.
    Materialized View: Indexed view for efficient data aggregation.

🔍 Key Analyses

    Transaction values by city, year, and gender.
    Transaction count and value by card brand/type.
    Quarterly analysis of online transactions.
    Data cube for year, card brand, and gender.

🚀 Implementation

SQL scripts are structured across different files for:

    Schema Creation
    Data Loading
    Analytical Queries