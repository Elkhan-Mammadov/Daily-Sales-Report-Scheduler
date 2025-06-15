BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'job_daily_sales_report',
    job_type        => 'STORED_PROCEDURE',
    job_action      => 'insert_daily_sales_report',
    start_date      => TRUNC(SYSDATE) + 1 + INTERVAL '23:59' HOUR TO MINUTE,
    repeat_interval => 'FREQ=DAILY; BYHOUR=23; BYMINUTE=59; BYSECOND=0',
    enabled         => TRUE );
END;

