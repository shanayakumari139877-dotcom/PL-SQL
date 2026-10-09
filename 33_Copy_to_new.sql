CREATE OR REPLACE TRIGGER trg_copy_to_newemp
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (:NEW.empno, :NEW.ename, :NEW.job, :NEW.mgr, :NEW.hiredate, :NEW.sal, :NEW.comm, :NEW.deptno);
END;
/
