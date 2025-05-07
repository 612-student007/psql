-- —á‘è‚P(p.33)
--SELECT * FROM employee;
-- —á‘è3ip.34j 
-- SELECT emp_name, birthday, sal FROM employee;
 -- —á‘è4(p.34)
-- SELECT emp_name, birthday, sal, sal * 12 FROM employee;
 -- —á‘è5(p.35)
 --SELECT emp_name, birthday, sal, sal * 12 AS ”Nû FROM employee;
 -- —á‘è6(p.35)
 --SELECT emp_name, birthday, sal, CAST(sal * 12 AS int) AS ”Nû FROM employee;
 --@—á‘è7(p.36)
 -- SELECT emp_name, birthday, sal, (sal * 12)::int AS ”Nû FROM employee;
 -- —á‘è‚P(p.36)
--SELECT '’S“–Ò ' || emp_name || '‚Ì’a¶“ú‚Í '|| birthday || '‚Å‚·B ' AS ’a¶“ú FROM employee;
--@—á‘è1(p.37)
--SELECT emp_name, to_char(birthday, 'Day, Month DD ,YYYY') FROM employee;
-- —á‘è2(p.37)
--SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
--@—á‘è1(p.40)
-- SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;
-- ’Ç‰Á—á‘è
--SELECT emp_name, birthday, sal, comm, AS û“ü FROM employee;
-- —á‘è1 (p.41)
--SELECT emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) AS ŒŠz FROM employee;
-- —á‘è1(p.42)
/*SELECT 
    emp_name, 
    CASE
         WHEN gender = 1   THEN '’j' 
                           ELSE '—'
    END AS «•Ê                    
 FROM employee;*/
 -- —á‘è5(p.44)
 /*SELECT
    emp_name,
    birthday,
    sal,
    comm,
    sal + 
    CASE WHEN comm IS NULL THEN 0 ELSE comm END

 FROM employee;*/
 -- —á‘è1@(p.45)
-- SELECT * FROM employee ORDER BY birthday DESC;
 -- —á‘è2 (p.45)
 --SELECT * FROM employee ORDER BY sal DESC;
-- —á‘è3ip.46)
--SELECT * FROM employee ORDER BY gender DESC, sal DESC;
-- —á‘è5(p.47)
--SELECT emp_name, birthday, sal, comm, sal + comm AS Œû FROM employee ORDER BY Œû;
-- —á‘è1(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;

--—ûK–â‘è
--1
--SELECT * FROM product;
--2
--SELECT prod_name, cost, discount FROM product;
--3
--SELECT prod_name, cost, discount, cost * discount AS Š„ˆø‰¿Ši FROM product;
--4
--SELECT prod_name, cost, discount, cost * COALESCE(discount ,1) AS Š„ˆø‰¿Ši FROM product;
--5
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product;
--6
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY 4 DESC;
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY Š„ˆø‰¿Ši DESC;
--7
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY Š„ˆø‰¿Ši DESC LIMIT 3;