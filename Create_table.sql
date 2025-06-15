CREATE TABLE sales (
  sale_id NUMBER,
  product_name VARCHAR2(100),
  sale_date DATE,
  amount NUMBER,         
  cost NUMBER );
  
  CREATE TABLE daily_sales_report (
  report_date DATE PRIMARY KEY,
  total_sales NUMBER,
  total_cost NUMBER,
  total_profit NUMBER);


