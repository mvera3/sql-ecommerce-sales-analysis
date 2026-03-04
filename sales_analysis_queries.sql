-- Sales by category
SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Top customers by revenue
SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY Customer_Name
ORDER BY total_sales DESC;

-- Discount impact
SELECT
    Discount,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM dbo.superstore_sales
GROUP BY Discount
ORDER BY Discount;

-- Loss analysis for Sean Miller
SELECT
    Product_Name,
    Sales,
    Discount,
    Profit
FROM dbo.superstore_sales
WHERE Customer_Name = 'Sean Miller'
ORDER BY Profit ASC;