🛍️ Retail Sales Analysis SQL Project
📌 Project Overview

Project Title: Retail Sales Analysis
Level: Beginner
Database: p1

This project demonstrates essential SQL skills and techniques commonly used by data analysts to explore, clean, and analyze retail sales data 📊.
The project walks through:

🏗️ Setting up a retail sales database
🧹 Performing data cleaning
🔎 Conducting exploratory data analysis (EDA)
💼 Answering real-world business questions using SQL

This project is perfect for beginners starting their journey in data analytics and looking to build a strong SQL foundation 🚀.

🎯 Objectives:
🏗️ Set Up the Database – Create and populate the retail sales database.
🧹 Data Cleaning – Identify and remove missing or null records.
📊 Exploratory Data Analysis (EDA) – Understand patterns and structure of the dataset.
💡 Business Analysis – Answer business questions and extract insights using SQL queries.

🗂️ Project Structure
1️⃣ Database Setup 🏗️

- **Database Creation**: The project starts by creating a database named `p1`.
- **Table Creation**: A table named `retail_sales` is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

```sql
CREATE DATABASE p1;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantiy INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);
```

### 2. Data Exploration & Cleaning

- **Record Count**: Determine the total number of records in the dataset.
- **Customer Count**: Find out how many unique customers are in the dataset.
- **Category Count**: Identify all unique product categories in the dataset.
- **Null Value Check**: Check for any null values in the dataset and delete records with missing data.

```sql
SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
```

### 3. Data Analysis & Findings

Some Basic Questions-

1. Display total data inside Table ?
```sql
select * from retail_sales
```
3. How many Sales we have ?
 ```sql
 select count(*) as Total_sale from retail_sales
```
4. How many customer we have ?
  ```sql
select count(customer_id) as total_customer from retail_sales
```

The following SQL queries were developed to answer specific business questions:

1. **Write a SQL query to retrieve all columns for sales made on '2022-11-05**:
```sql
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
```

2. **Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022**:
```sql
  select *
  from retail_sales
  where
  category='Clothing' and
  quantiy >=4 AND
  sale_date between '2022-11-01' and '2022-11-30'

```

3. **Write a SQL query to calculate the total sales (total_sale) for each category.**:
```sql
  select
  sum(total_sale),category
  from retail_sales
  group by category 

```

4. **Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.**:
```sql
  select
  avg(age) as avg_customer_age
  from retail_sales
  where category='Beauty' 

```

5. **Write a SQL query to find all transactions where the total_sale is greater than 1000.**:
```sql
SELECT * FROM retail_sales
WHERE total_sale > 1000
```

6. **Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.**:
```sql
SELECT 
    category,
    gender,
    COUNT(*) as total_trans
FROM retail_sales
GROUP 
    BY 
    category,
    gender
ORDER BY 1
```

7. **Write a SQL query to find the top 5 customers based on the highest total sales **:
```sql
  select
  top 5 customer_id,sum(total_sale) as TOTAL_SALES
  from retail_sales
  GROUP BY customer_id
  order by TOTAL_SALES desc

```

8. **Write a SQL query to find the number of unique customers who purchased items from each category.**:
```sql
SELECT 
    category,    
    COUNT(DISTINCT customer_id) as unique_cs
FROM retail_sales
GROUP BY category
```


📈 Key Findings
🔹 Customer Demographics – Customers belong to multiple age groups, with sales spread across categories like Clothing 👕 and Beauty 💄.
🔹 High-Value Transactions – Several transactions exceed 1000 in total sale amount, indicating premium purchases 💎.
🔹 Sales Trends – Monthly analysis highlights seasonal variations and peak sales periods 📅.
🔹 Customer Insights – Top-spending customers and popular categories were identified 🏆.

📑 Reports Generated
📊 Sales Summary Report – Total sales, category performance, and demographics.
📈 Trend Analysis Report – Monthly and shift-based sales insights.
👥 Customer Insights Report – Top customers and unique buyers per category.

✅ Conclusion
This project provides a complete beginner-friendly introduction to SQL for data analysts 🧑‍💻. It covers:

Database creation 🏗️
Data cleaning 🧹
Exploratory data analysis 🔎
Business-driven SQL queries 💼


The insights generated from this analysis can help businesses understand customer behavior, optimize product strategies, and improve decision-making 📊✨.

🚀 How to Use:
📥 Clone the Repository from GitHub.
🏗️ Set Up the Database using database_setup.sql.
▶️ Run the Queries from analysis_queries.sql.
🔍 Explore & Modify queries to gain deeper insights.


✨ Thank You!
Happy Learning & Querying! 💻📊
