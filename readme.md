

\# Customer Churn Analysis



\## Project Overview

Customer churn is a major challenge for businesses, particularly in the telecommunications industry. This project analyzes customer data to identify churn patterns, understand customer behavior, and generate insights that can support customer retention strategies.



The project uses Python, MySQL, and Power BI to perform data analysis and build an interactive dashboard.



\## Project Objectives

\- Analyze customer churn patterns.

\- Understand the factors associated with customer churn.

\- Perform data cleaning and exploratory data analysis.

\- Analyze customer data using SQL queries.

\- Develop an interactive Power BI dashboard.

\- Identify business insights and suggest retention strategies.



\## Tools and Technologies



| Tool | Purpose |

|---|---|

| Python | Data cleaning and exploratory data analysis |

| Pandas | Data manipulation |

| NumPy | Numerical operations |

| Matplotlib | Data visualization |

| Seaborn | Statistical visualization |

| MySQL | Database management and SQL analysis |

| Power BI | Interactive dashboard and reporting |

| Jupyter Notebook | Python development environment |



\## Dataset

The project uses the Telco Customer Churn dataset.



\- Total Records: 7,043

\- Total Columns: 21

\- Target Variable: Churn

\- Original Dataset: `Telco-Customer-Churn.csv`

\- Cleaned Dataset: `customer\_churn\_cleaned.csv`



The dataset contains customer demographics, account information, subscribed services, contract details, billing information, and churn status.



\## Project Structure



```text

Customer-Churn-Analysis/

│

├── Dataset/

│   ├── Telco-Customer-Churn.csv

│   └── customer\_churn\_cleaned.csv

│

├── Python/

│   └── Customer\_Churn\_EDA.ipynb

│

├── SQL/

│   └── customer\_churn\_queries.sql

│

├── PowerBI/

│   ├── Customer\_Churn\_Analysis.pbix

│   └── Customer\_Churn\_Analysis\_Report.pdf

│

├── Charts/

│   └── churn\_analysis\_summary.csv

│

├── Reports/

│   └── Customer\_Churn\_Analysis\_Report.pdf

│

└── README.md

```



\## Project Workflow



\### 1. Python - Data Cleaning and EDA

\- Loaded and explored the customer dataset.

\- Examined dataset structure and data quality.

\- Performed data preparation and exploratory analysis.

\- Analyzed customer churn patterns.

\- Created visualizations to understand customer behavior.



\### 2. MySQL - SQL Analysis

\- Imported the customer dataset into MySQL Workbench.

\- Used SQL queries to analyze customer information.

\- Examined churn patterns across different customer segments.

\- Analyzed contract types, payment methods, and customer details.



\### 3. Power BI - Dashboard Development

Developed a three-page interactive dashboard.



\*\*Page 1: Customer Churn Overview\*\*

\- Total Customers

\- Churned Customers

\- Retained Customers

\- Overall Churn Rate

\- Churn by Contract Type

\- Churn by Internet Service

\- Churn by Payment Method

\- Churn by Tenure and Gender



\*\*Page 2: Customer Demographics \& Risk Analysis\*\*

\- Churn Rate by Senior Citizen Status

\- Churn Rate by Dependents Status

\- Churn Rate by Payment Method

\- Churn Rate by Partner Status

\- Churn Rate by Internet Service

\- Churn Rate by Customer Tenure



\*\*Page 3: Customer Retention \& Revenue Analysis\*\*

\- Total Monthly Revenue

\- Monthly Revenue at Risk

\- Retained Monthly Revenue

\- Average Monthly Charges by Churn Status

\- Average Customer Tenure by Churn Status

\- Monthly Revenue at Risk by Contract Type

\- Average Total Charges by Churn Status



\### Interactive Features

\- Contract Type slicer

\- Payment Method slicer

\- Internet Service slicer

\- Synchronized slicers across report pages

\- Reset Filters button



\## Key Findings



| Metric | Result |

|---|---:|

| Total Customers | 7,043 |

| Churned Customers | 1,869 |

| Retained Customers | 5,174 |

| Churn Rate | 26.54% |

| Total Monthly Charges | 456.12K |

| Monthly Charges Associated with Churned Customers | 139.13K |

| Monthly Charges Associated with Retained Customers | 316.99K |



\### Business Insights

\- Churned customers have lower average tenure than retained customers.

\- Month-to-month contracts account for the largest share of monthly charges associated with churned customers.

\- Churned customers have higher average monthly charges than retained customers.

\- Customer contract type, tenure, payment method, and service usage are useful dimensions for further churn investigation.



\## Recommendations

\- Focus on improving retention among month-to-month customers.

\- Monitor customers during their early tenure.

\- Investigate pricing and service-related issues.

\- Analyze high-churn customer segments regularly.

\- Use customer data to support targeted retention strategies.



\## Project Deliverables

\- Python Jupyter Notebook

\- Original and cleaned datasets

\- MySQL SQL queries

\- Interactive Power BI dashboard

\- Project documentation in PDF format

\- Supporting charts and analysis files



\## Conclusion

This project demonstrates the use of Python, SQL, and Power BI in an end-to-end data analytics workflow. It transforms raw customer data into meaningful insights through data preparation, exploratory analysis, SQL querying, and interactive visualization.



The analysis helps identify customer segments associated with higher churn and provides insights that can support data-driven customer retention decisions.



\---



\*\*Project Category:\*\* Data Analytics  

\*\*Domain:\*\* Telecommunications  

\*\*Tools:\*\* Python | MySQL | Power BI | Excel



