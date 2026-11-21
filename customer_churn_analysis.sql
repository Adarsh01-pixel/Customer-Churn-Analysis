CREATE DATABASE IF NOT EXISTS customer_churn;
USE customer_churn;
SELECT DATABASE();

use customer_churn;
create table customers(
Customer_id varchar(20) primary key,
Gender varchar(10),
Senior_Citizen int,
Partner varchar(10),
Dependants varchar(10),
Tenure int,
Phoneservice varchar(30),
Multiplelines varchar(30),
 InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);

USE customer_churn;

SHOW TABLES;

DESCRIBE customers;

USE customer_churn;

DROP TABLE customers;

CREATE TABLE customers (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10)
);

DESCRIBE customers;

SELECT COUNT(*) AS Total_Customers
FROM customers;

select * from customers
limit 10;

SELECT
    customerID,
    COUNT(*) AS Duplicate_Count
FROM customers
GROUP BY customerID
HAVING COUNT(*) > 1;

SELECT
    Churn,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY Churn;

SELECT
    SUM(customerID IS NULL) AS Missing_ID,
    SUM(gender IS NULL) AS Missing_Gender,
    SUM(tenure IS NULL) AS Missing_Tenure,
    SUM(MonthlyCharges IS NULL) AS Missing_MonthlyCharges,
    SUM(TotalCharges IS NULL) AS Missing_TotalCharges,
    SUM(Churn IS NULL) AS Missing_Churn
FROM customers;

select count(*) as total_customers
from customers;

select count(*) as Total_Churned_Customers
from customers
where churn = 'yes';

select count(*) as Retained_Customers
from customers
where churn = 'No';

SELECT
    ROUND(
        (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END)
        * 100.0) / COUNT(*), 2
    ) AS Churn_Rate_Percentage
FROM customers;

SELECT
    ROUND(
        (COUNT(CASE WHEN Churn = 'No' THEN 1 END)
        * 100.0) / COUNT(*), 2
    ) AS Retention_Rate_Percentage
FROM customers;

SELECT
    gender,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate
FROM customers
GROUP BY gender;

SELECT
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;

SELECT
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate
FROM customers
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT
    InternetService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate
FROM customers
GROUP BY InternetService
ORDER BY Churn_Rate DESC;

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS Tenure_Group,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate

FROM customers
GROUP BY Tenure_Group
ORDER BY
    CASE Tenure_Group
        WHEN '0-12 Months' THEN 1
        WHEN '13-24 Months' THEN 2
        WHEN '25-48 Months' THEN 3
        ELSE 4
    END;
    
    SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Charges'
        WHEN MonthlyCharges < 70 THEN 'Medium Charges'
        ELSE 'High Charges'
    END AS Charge_Category,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate

FROM customers
GROUP BY Charge_Category
ORDER BY Churn_Rate DESC;

SELECT
    CASE
        WHEN SeniorCitizen = 1 THEN 'Senior Citizen'
        ELSE 'Non-Senior Citizen'
    END AS Customer_Category,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS Churn_Rate

FROM customers
GROUP BY SeniorCitizen;

SELECT
    ROUND(SUM(MonthlyCharges), 2)
        AS Monthly_Revenue_At_Risk
FROM customers
WHERE Churn = 'Yes';

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2)
        AS Average_Monthly_Charges
FROM customers
GROUP BY Churn;

SELECT
    Churn,
    ROUND(SUM(TotalCharges), 2)
        AS Total_Revenue
FROM customers
GROUP BY Churn;

SELECT
    customerID,
    tenure,
    Contract,
    MonthlyCharges,
    TotalCharges
FROM customers
WHERE Churn = 'Yes'
ORDER BY MonthlyCharges DESC
LIMIT 20;

SELECT
    Contract,
    PaymentMethod,
    COUNT(*) AS Total_Customers,

    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS Churned_Customers,

    ROUND(
        100.0 * SUM(CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*), 2
    ) AS Churn_Rate

FROM customers
GROUP BY Contract, PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT
    Churn,
    ROUND(AVG(tenure), 2)
        AS Average_Tenure_Months
FROM customers
GROUP BY Churn;