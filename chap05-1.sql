-- INSERT INTO <<table_name>> VALUES (field1, field2, ..., fieldn);
--\d employee
-- ���1 (p.110)
--INSERT INTO employee VALUES (21, 40, '�R�c �Ԏq', '1980-01-02', '2025-05-09', 2, 4000, NULL);
--�@���2(p.112)
--INSERT INTO employee(emp_name, emp_id) VALUES(23, '�n�� ����');
-- ���3(p.113)
/*INSERT INTO department(dept_id, dept_name, loc, mgr_id, adept_id)
    SELECT dept_id + 5, '��2' || dept_name, loc, mgr_id, dept_id FROM department;
SELECT * FROM department*/
