--例題1(p.67)
/*SELECT count(*) AS 行数, --行数カウント
       count(comm),-- NULLはカウントしない
       sum(sal) AS  合計,
       avg(sal) AS 平均,
       min(sal) AS 最小,
       max(sal) AS 最大
  FROM employee;*/  
--例題2(p.67)
/*SELECT count(*) AS 行数, --行数カウント
       sum(sal) AS  合計,
       avg(sal) AS 平均,
       min(sal) AS 最小,
       max(sal) AS 最大
  FROM employee
  WHERE dept_id =30;*/
--SELECT count(*) - count(comm) FROM employee;
--SELECT count(*) FROM employee WHERE comm IS NULL;
--例題3(p.68)
--SELECT count (DISTINCT dept_id) FROM employee;
--例題1(p.71)
 /*SELECT count(*) AS 行数, --行数カウント
       sum(sal) AS  合計,
       avg(sal) AS 平均,
       min(sal) AS 最小,
       max(sal) AS 最大
  FROM employee
  GROUP BY dept_id
  ORDER BY dept_id;
  --ORDER BY 平均 DESC;*/
--例題2(p.71)
/*SELECT
    gender,
    count(*)
    FROM employee
    GROUP BY gender
    ORDER BY gender;*/
--例題3(p.72)
/*SELECT dept_id, gender, count(*), avg(sal)
    FROM employee
    GROUP BY dept_id, gender
    ORDER BY dept_id, gender;*/
-- 例題4(p.72)
/*SELECT dept_id, gender, count(*), avg(sal)
    FROM employee
    GROUP BY dept_id, gender
    ORDER BY gender, dept_id;*/
--例題5(p.73)
/*SELECT dept_id AS 部門, sum(sal) AS 合計, avg(sal) AS 平均, min(sal) AS 最小, max(sal) AS 最大
  FROM employee
  GROUP BY dept_id
  HAVING sum(sal) <= 5000
  ORDER BY dept_id;*/
--例題6(p.73)
/*SELECT dept_id, sum(sal), avg(sal), min(sal), max(sal)
    FROM employee
    WHERE gender = 1
    GROUP BY dept_id
    HAVING sum(sal) <=5000
    ORDER BY dept_id;*/
--例題1(p.74)
--SELECT DISTINCT dept_id FROM employee ORDER BY dept_id;
--例題2(p.75)
SELECT DISTINCT ON (dept_id) emp_name, dept_id, sal FROM employee ORDER BY dept_id, sal DESC;