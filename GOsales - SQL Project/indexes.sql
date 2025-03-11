-- Creating indexes on frequently queried columns

-- go_daily_sales (based on product number)
CREATE INDEX idx_go_daily_sales_Product_number_Date 
    ON go_daily_sales (Product_number, Date);

-- go_daily_sales (based on retailer code)
CREATE INDEX idx_go_daily_sales_Retailer_code_Date 
    ON go_daily_sales (Retailer_code, Date);

-- go_products
CREATE INDEX idx_go_products_Product 
    ON go_products (Product); 

-- go_retailers
-- No additional index needed as Retailer_code is already the primary key

-- go_1k
CREATE INDEX idx_go_1k_Product_number_Retailer_code 
    ON go_1k (Product_number, Retailer_code);