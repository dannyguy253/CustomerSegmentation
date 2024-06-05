-- Creating a new database for the dataset
CREATE DATABASE customer_segmentation;
USE customer_segmentation;

-- Define the Table Schema
CREATE TABLE transactions (
	Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Customer_Name VARCHAR(255),
    Product VARCHAR(255),
    Total_Items INT,
    Total_Cost DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    City VARCHAR(100),
    Store_type VARCHAR(50),
    Discount_Applied VARCHAR(5),
    Customer_Category VARCHAR(50),
    Season VARCHAR(50),
    Promotion VARCHAR(50)
);

-- Right click database name "customer_segmentation" then select "table data import wizard" to import the csv into the existing table "transactions"

-- Testing query for transaction table
SELECT *
FROM transactions
LIMIT 10;


-- Make customers table with desired features to use for K Means Clustering
WITH payment_method_counts AS (
    SELECT Customer_Name,
           Payment_Method,
           COUNT(*) AS method_count,
           ROW_NUMBER() OVER (PARTITION BY Customer_Name ORDER BY COUNT(*) DESC) AS rnk
    FROM transactions
    GROUP BY Customer_Name, Payment_Method
)
SELECT t.Customer_Name,
	COUNT(t.Transaction_ID) AS Num_Visits, 
    SUM(t.Total_Cost) AS Total_Spent,
    MIN(t.Date) AS First_Purchase_Date,
    MAX(t.Date) AS Last_Purchase_Date,
    DATEDIFF(CURRENT_DATE, MAX(t.Date)) AS recency,
    AVG(t.Total_Cost) AS Avg_Spend,
    AVG(t.Total_Items) AS Avg_Items,
    COUNT(CASE WHEN t.Discount_Applied = "True" THEN 1 END) AS Discount_Usage,
    pm.Payment_Method AS Preferred_Payment_Method
FROM transactions t
LEFT JOIN payment_method_counts pm ON t.Customer_Name = pm.Customer_Name AND pm.rnk = 1
GROUP BY t.Customer_Name, pm.Payment_Method
ORDER BY t.Customer_Name;

-- In the result grid menu, click on "export recordset to an external file" to export the query above into a csv called "customer_segmentation.csv"


