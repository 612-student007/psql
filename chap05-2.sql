-- ���1(p.115)
--SELECT sal AS �ύX�O, sal * 1.2 AS �ύX�� FROM employee;
--UPDATE employee SET sal = sal * 1.2;
-- ���2(p.116)
/*UPDATE employee
    SET sal = sal - 1000 
    WHERE sal >= 5000;
    SELECT * FROM employee;*/
    --���3(p.117)
    UPDATE employee SEt sal(SELECT avg(sal) FROM employee) WHERE dept_id = 40;
