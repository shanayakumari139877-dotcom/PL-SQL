CREATE OR REPLACE TRIGGER restrict_emp_salary
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.salary > 50000 THEN
        raise_application_error(-20001, 'Salary cannot be greater than Rs. 50000.');
    END IF;
END;
/
