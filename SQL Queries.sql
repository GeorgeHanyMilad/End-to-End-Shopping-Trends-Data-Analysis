CREATE DATABASE Shopping_Trends_DB;
USE Shopping_Trends_DB;

-- 1. Data Overview
SELECT TOP 10 * FROM shopping_trends;
SELECT COUNT(*) AS Total_Rows FROM shopping_trends;

-- 2. Data Quality Checks
SELECT * FROM shopping_trends WHERE Purchase_Amount_USD <= 0;
SELECT * FROM shopping_trends WHERE Age < 0 OR Age > 100;
SELECT * FROM shopping_trends WHERE Review_Rating < 1 OR Review_Rating > 5;
SELECT * FROM shopping_trends WHERE Previous_Purchases < 0;

-- 3. Customer Counts
SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers,
       COUNT(Customer_ID) AS Total_Customers
FROM shopping_trends;

-- 4. Distinct Values (Categorical Columns)
SELECT DISTINCT Gender FROM shopping_trends;
SELECT DISTINCT Item_Purchased FROM shopping_trends;
SELECT DISTINCT Category FROM shopping_trends;
SELECT DISTINCT Location FROM shopping_trends;
SELECT DISTINCT Size FROM shopping_trends;
SELECT DISTINCT Color FROM shopping_trends;
SELECT DISTINCT Season FROM shopping_trends;
SELECT DISTINCT Payment_Method FROM shopping_trends;
SELECT DISTINCT Shipping_Type FROM shopping_trends;
SELECT DISTINCT Preferred_Payment_Method FROM shopping_trends;
SELECT DISTINCT Frequency_of_Purchases FROM shopping_trends;

-- 5. Summary Statistics (Numerical Columns)
SELECT 
    MIN(Age) AS Min_Age,
    MAX(Age) AS Max_Age,
    ROUND(AVG(Age), 2) AS Avg_Age,
    MIN(Purchase_Amount_USD) AS Min_Amount,
    MAX(Purchase_Amount_USD) AS Max_Amount,
    ROUND(AVG(Purchase_Amount_USD), 2) AS Avg_Amount
FROM shopping_trends;

-- 6. Missing Values Check
SELECT 
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null,
    SUM(CASE WHEN Item_Purchased IS NULL THEN 1 ELSE 0 END) AS Item_Purchased_Null,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Category_Null,
    SUM(CASE WHEN Purchase_Amount_USD IS NULL THEN 1 ELSE 0 END) AS Amount_Null,
    SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS Location_Null,
    SUM(CASE WHEN Size IS NULL THEN 1 ELSE 0 END) AS Size_Null,
    SUM(CASE WHEN Color IS NULL THEN 1 ELSE 0 END) AS Color_Null,
    SUM(CASE WHEN Season IS NULL THEN 1 ELSE 0 END) AS Season_Null,
    SUM(CASE WHEN Review_Rating IS NULL THEN 1 ELSE 0 END) AS Review_Null,
    SUM(CASE WHEN Subscription_Status IS NULL THEN 1 ELSE 0 END) AS Subscription_Null,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Null,
    SUM(CASE WHEN Shipping_Type IS NULL THEN 1 ELSE 0 END) AS Shipping_Null,
    SUM(CASE WHEN Discount_Applied IS NULL THEN 1 ELSE 0 END) AS Discount_Null,
    SUM(CASE WHEN Promo_Code_Used IS NULL THEN 1 ELSE 0 END) AS Promo_Code_Null,
    SUM(CASE WHEN Previous_Purchases IS NULL THEN 1 ELSE 0 END) AS Previous_Purchases_Null,
    SUM(CASE WHEN Preferred_Payment_Method IS NULL THEN 1 ELSE 0 END) AS Preferred_Payment_Null,
    SUM(CASE WHEN Frequency_of_Purchases IS NULL THEN 1 ELSE 0 END) AS Frequency_Purchases_Null
FROM shopping_trends;

-- 7. Duplicate Check
SELECT Customer_ID, COUNT(*) AS Duplicate_Count
FROM shopping_trends
GROUP BY Customer_ID
HAVING COUNT(*) > 1;