-- —á‘è1(p.115)
--SELECT sal AS •ÏX‘O, sal * 1.2 AS •ÏXŒã FROM employee;
--UPDATE employee SET sal = sal * 1.2;
-- —á‘è2(p.116)
/*UPDATE employee
    SET sal = sal - 1000 
    WHERE sal >= 5000;
    SELECT * FROM employee;*/
    --—á‘è3(p.117)
    UPDATE employee SEt sal(SELECT avg(sal) FROM employee) WHERE dept_id = 40;
