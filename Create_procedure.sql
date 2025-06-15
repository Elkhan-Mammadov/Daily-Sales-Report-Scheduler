CREATE OR REPLACE PROCEDURE insert_daily_sales_report IS
  v_total_sales NUMBER;
  v_total_cost  NUMBER;
  v_total_profit NUMBER;
BEGIN
  SELECT NVL(SUM(amount), 0),NVL(SUM(cost), 0),NVL(SUM(amount - cost), 0)
  INTO v_total_sales, v_total_cost, v_total_profit
  FROM sales WHERE TRUNC(sale_date) = TRUNC(SYSDATE);

  INSERT INTO daily_sales_report (report_date, total_sales, total_cost, total_profit)
  VALUES (TRUNC(SYSDATE), v_total_sales, v_total_cost, v_total_profit);
  COMMIT;
END;
/


