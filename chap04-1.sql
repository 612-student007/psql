-- ���P(p.33)
--SELECT * FROM employee;
-- ���3�ip.34�j 
-- SELECT emp_name, birthday, sal FROM employee;
 -- ���4(p.34)
-- SELECT emp_name, birthday, sal, sal * 12 FROM employee;
 -- ���5(p.35)
 --SELECT emp_name, birthday, sal, sal * 12 AS �N�� FROM employee;
 -- ���6(p.35)
 --SELECT emp_name, birthday, sal, CAST(sal * 12 AS int) AS �N�� FROM employee;
 --�@���7(p.36)
 -- SELECT emp_name, birthday, sal, (sal * 12)::int AS �N�� FROM employee;
 -- ���P(p.36)
--SELECT '�S���� ' || emp_name || '�̒a������ '|| birthday || '�ł��B ' AS �a���� FROM employee;
--�@���1(p.37)
--SELECT emp_name, to_char(birthday, 'Day, Month DD ,YYYY') FROM employee;
-- ���2(p.37)
--SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
--�@���1(p.40)
-- SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;
-- �ǉ����
--SELECT emp_name, birthday, sal, comm, AS ���� FROM employee;
-- ���1 (p.41)
--SELECT emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) AS ���z FROM employee;
-- ���1(p.42)
/*SELECT 
    emp_name, 
    CASE
         WHEN gender = 1   THEN '�j' 
                           ELSE '��'
    END AS ����                    
 FROM employee;*/
 -- ���5(p.44)
 /*SELECT
    emp_name,
    birthday,
    sal,
    comm,
    sal + 
    CASE WHEN comm IS NULL THEN 0 ELSE comm END

 FROM employee;*/
 -- ���1�@(p.45)
-- SELECT * FROM employee ORDER BY birthday DESC;
 -- ���2 (p.45)
 --SELECT * FROM employee ORDER BY sal DESC;
-- ���3�ip.46)
--SELECT * FROM employee ORDER BY gender DESC, sal DESC;
-- ���5(p.47)
--SELECT emp_name, birthday, sal, comm, sal + comm AS ���� FROM employee ORDER BY ����;
-- ���1(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;

--���K���
--1
--SELECT * FROM product;
--2
--SELECT prod_name, cost, discount FROM product;
--3
--SELECT prod_name, cost, discount, cost * discount AS �������i FROM product;
--4
--SELECT prod_name, cost, discount, cost * COALESCE(discount ,1) AS �������i FROM product;
--5
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS �������i FROM product;
--6
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS �������i FROM product ORDER BY 4 DESC;
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS �������i FROM product ORDER BY �������i DESC;
--7
--SELECT prod_name, cost, discount, to_char((cost * COALESCE(discount ,1)), '9G999G999D99') AS �������i FROM product ORDER BY �������i DESC LIMIT 3;