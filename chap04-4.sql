/*SELECT
    employee.emp_id,
    --employee.dept_id,
    employee.emp_name,
    department.dept_name,
    loc
FROM 
    employee
JOIN
    department
ON 
    employee.dept_id = department.dept_id;--�����̃e�[�u���ň�v���Ă��郌�R�[�h�𒊏o�������*/
-- ���2
/*SELECT department.dept_id,
       department.dept_name,
       employee.emp_id,
       employee.emp_name

    FROM department LEFT JOIN employee
    ON 
       department.mgr_id = employee.emp_id;*/
-- ���3
/*SELECT
    d.dept_id,
    d.dept_name,
    d.adept_id,
    d2.dept_name
FROM
    department d
JOIN
    department d2
ON
    d.adept_id = d2.dept_id;*/
SELECT psales_no, sales_no, quantity, price, product.prod_id, prod_name LIMIT 5
FROM sales 
JOIN product 
ON sales.prod_id = product.prod_id;