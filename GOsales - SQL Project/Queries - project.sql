SELECT * FROM GOSales.go_products;
SELECT * FROM GOSales.go_1k;
SELECT * FROM GOSales.go_daily_sales;
SELECT * FROM GOSales.go_retailers;
SELECT * FROM GOSales.go_methods;

-- Total sales revenue 
SELECT DISTINCT Date FROM go_daily_sales;

SELECT *, (Quantity * `Unit price`) AS Expected_Revenue, (Quantity * `Unit sale price`) AS Actual_Revenue
FROM go_daily_sales;

-- Top 5 best-selling products by quantity and revenue
SELECT p.Product, SUM(g.Quantity) AS Total_Quantity, 
       SUM(g.Quantity * g.`Unit price`) AS Expected_Revenue, 
       SUM(g.Quantity * g.`Unit sale price`) AS Actual_Revenue
FROM go_daily_sales g
JOIN go_products p ON g.`Product number` = p.`Product number`
GROUP BY p.Product
ORDER BY Total_Quantity DESC, Actual_Revenue DESC, Expected_Revenue DESC
LIMIT 5;

-- Retailers with the highest sales volumes and revenue (top 10).
SELECT r.`Retailer name`, SUM(g.Quantity) AS Total_Quantity, 
       SUM(g.Quantity * g.`Unit price`) AS Expected_Revenue, 
       SUM(g.Quantity * g.`Unit sale price`) AS Actual_Revenue
FROM go_daily_sales g
JOIN go_retailers r ON g.`Retailer code` = r.`Retailer code`
GROUP BY r.`Retailer name`
ORDER BY Total_Quantity DESC, Actual_Revenue DESC, Expected_Revenue DESC
LIMIT 10;

-- Compare the Quantity sold (go_daily_sales) with the product stock (go_1k)
SELECT
    g.`Product number`,
	p.Product,
    SUM(g.Quantity) AS Quantity_Sold,
    iv.Quantity AS Stock_Quantity,
    CASE
        WHEN SUM(g.Quantity) > iv.Quantity THEN 'Almost Stockout'
        ELSE 'Sufficient Stock' 
    END AS Stock_Status
FROM 
    go_daily_sales g
JOIN 
    go_products p ON g.`Product number` = p.`Product number`
JOIN 
    go_1k iv ON g.`Product number` = iv.`Product number`
GROUP BY 
    g.`Product number`
HAVING 
    SUM(g.Quantity) > iv.Quantity;

-- Products with the highest stock levels and lowest sales performance
SELECT 
    p.Product, 
    iv.Quantity AS Stock_Quantity, 
    COALESCE(SUM(g.Quantity), 0) AS Total_Quantity_Sold,
    COALESCE(SUM(g.Quantity * g.`Unit sale price`), 0) AS Actual_Revenue
FROM 
    go_products p
JOIN 
    go_1k iv ON p.`Product number` = iv.`Product number`
LEFT JOIN 
    go_daily_sales g ON p.`Product number` = g.`Product number`
GROUP BY 
    p.Product
ORDER BY 
    iv.Quantity DESC, 
    Actual_Revenue ASC
LIMIT 10;

-- Analyze the most popular product lines and product types.
SELECT 
    p.`Product line`, 
    p.`Product type`, 
    SUM(g.Quantity) AS Total_Quantity_Sold,
    SUM(g.Quantity * g.`Unit sale price`) AS Total_Revenue
FROM 
    go_products p
LEFT JOIN 
    go_daily_sales g ON p.`Product number` = g.`Product number`
GROUP BY 
    p.`Product line`, 
    p.`Product type`
ORDER BY 
    Total_Quantity_Sold DESC, 
    Total_Revenue DESC
LIMIT 10;

-- Identify trends in sales across countries.
SELECT 
    r.Country, 
    YEAR(g.Date) AS Sales_Year,
    MONTH(g.Date) AS Sales_Month,
    SUM(g.Quantity) AS Total_Quantity_Sold,
    SUM(g.Quantity * g.`Unit sale price`) AS Total_Revenue
FROM 
    go_daily_sales g
JOIN 
    go_retailers r ON g.`Retailer code` = r.`Retailer code`
GROUP BY 
    r.Country
ORDER BY 
    r.Country ASC, Sales_Year ASC, Sales_Month ASC;

-- Analyze which order method types drive the most sales.
SELECT 
    m.`Order method type` AS Order_Method_Type,
    SUM(g.Quantity) AS Total_Quantity_Sold,
    SUM(g.Quantity * g.`Unit sale price`) AS Total_Revenue
FROM 
    go_daily_sales g
JOIN 
    go_methods m ON g.`Order method code` = m.`Order method code`
GROUP BY 
    Order_Method_Type
ORDER BY 
    Total_Revenue DESC, Total_Quantity_Sold DESC;



