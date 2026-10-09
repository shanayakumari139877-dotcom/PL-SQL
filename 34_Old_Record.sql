CREATE OR REPLACE TRIGGER trg_log_old_emp
AFTER UPDATE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (:OLD.empno, :OLD.ename, :OLD.job, :OLD.mgr, :OLD.hiredate, :OLD.sal, :OLD.comm, :OLD.deptno);
END;
/
