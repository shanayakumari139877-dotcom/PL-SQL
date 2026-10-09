CREATE OR REPLACE TRIGGER trg_restrict_weekend
BEFORE INSERT OR UPDATE OR DELETE ON your_table_name
BEGIN
  
  IF TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=AMERICAN') IN ('SAT', 'SUN') THEN
    RAISE_APPLICATION_ERROR(-20001, 'Table access is not allowed on weekends.');
  END IF;
END;
/
