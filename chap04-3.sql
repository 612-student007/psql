--���1(p.67)
/*SELECT count(*) AS �s��, --�s���J�E���g
       count(comm),-- NULL�̓J�E���g���Ȃ�
       sum(sal) AS  ���v,
       avg(sal) AS ����,
       min(sal) AS �ŏ�,
       max(sal) AS �ő�
  FROM employee;*/  
--���2(p.67)
/*SELECT count(*) AS �s��, --�s���J�E���g
       sum(sal) AS  ���v,
       avg(sal) AS ����,
       min(sal) AS �ŏ�,
       max(sal) AS �ő�
  FROM employee
  WHERE dept_id =30;*/
--SELECT count(*) - count(comm) FROM employee;
--SELECT count(*) FROM employee WHERE comm IS NULL;
--���3(p.68)
--SELECT count (DISTINCT dept_id) FROM employee;
--���1(p.71)
 /*SELECT count(*) AS �s��, --�s���J�E���g
       sum(sal) AS  ���v,
       avg(sal) AS ����,
       min(sal) AS �ŏ�,
       max(sal) AS �ő�
  FROM employee
  GROUP BY dept_id
  ORDER BY dept_id;
  --ORDER BY ���� DESC;*/
--���2(p.71)
/*SELECT
    gender,
    count(*)
    FROM employee
    GROUP BY gender
    ORDER BY gender;*/
--���3(p.72)
/*SELECT dept_id, gender, count(*), avg(sal)
    FROM employee
    GROUP BY dept_id, gender
    ORDER BY dept_id, gender;*/
-- ���4(p.72)
/*SELECT dept_id, gender, count(*), avg(sal)
    FROM employee
    GROUP BY dept_id, gender
    ORDER BY gender, dept_id;*/
--���5(p.73)
/*SELECT dept_id AS ����, sum(sal) AS ���v, avg(sal) AS ����, min(sal) AS �ŏ�, max(sal) AS �ő�
  FROM employee
  GROUP BY dept_id
  HAVING sum(sal) <= 5000
  ORDER BY dept_id;*/
--���6(p.73)
/*SELECT dept_id, sum(sal), avg(sal), min(sal), max(sal)
    FROM employee
    WHERE gender = 1
    GROUP BY dept_id
    HAVING sum(sal) <=5000
    ORDER BY dept_id;*/
--���1(p.74)
--SELECT DISTINCT dept_id FROM employee ORDER BY dept_id;
--���2(p.75)
SELECT DISTINCT ON (dept_id) emp_name, dept_id, sal FROM employee ORDER BY dept_id, sal DESC;