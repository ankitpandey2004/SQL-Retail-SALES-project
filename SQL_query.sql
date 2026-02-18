select * from retail_sales
where 
   transactions_id IS NULL
   OR
   sale_date IS NULL
   OR
   sale_time IS NULL
   OR
   customer_id IS NULL 
   or
   gender is null
   or
   age is null
   or
   category is null
   or 
   quantiy is null
   or 
   price_per_unit is null
   or
   cogs is null
   or
   total_sale is null;

/* 
delete from retail_sales
where 
    transactions_id IS NULL
   OR
   sale_date IS NULL
   OR
   sale_time IS NULL
   OR
   customer_id IS NULL 
   or
   gender is null
   or
   age is null
   or
   category is null
   or 
   quantiy is null
   or 
   price_per_unit is null
   or
   cogs is null
   or
   total_sale is null;
*/



--DATA EXPLOARTION

--Display total data inside Table ?
  select * from retail_sales

--How many Sales we have ?
  select count(*) as Total_sale from retail_sales

--How many customer we have ?
  select count(customer_id) as total_customer from retail_sales

--Write a SQL query to retrieve all columns for sales made on '2022-11-05:
  select * from retail_sales where sale_date='2022-12-16'

--Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
  select * from retail_sales where category='Clothing' and quantiy >=4 AND sale_date between '2022-11-01' and '2022-11-30'

--Write a SQL query to calculate the total sales (total_sale) for each category.:
  select sum(total_sale),category from retail_sales group by category 

--Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:
  select avg(age) as avg_customer_age from retail_sales where category='Beauty' 

--Write a SQL query to find all transactions where the total_sale is greater than 1000.:
  select * from retail_sales where total_sale>1000

--Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
  select gender,category, count(transactions_id) as  total_number_of_transactions from retail_sales group by gender, category

--Write a SQL query to find the top 5 customers based on the highest total sales :
  select top 5 customer_id,sum(total_sale) as TOTAL_SALES from retail_sales GROUP BY customer_id order by TOTAL_SALES desc

--Write a SQL query to find the number of unique customers who purchased items from each category.:
  select count(distinct customer_id)as unique_cust_id,category from retail_sales group by category;

