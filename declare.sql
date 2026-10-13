declare 
d_char varchar2(50) := 'ddd';
d_char2 varchar2(50) := 'ddd';
d_char3 varchar2(50) := 'ddd';
d_number number(10,2) := 3333.22;
--l_dno number := &dno;

BEGIN

d_char := 'sssss';
d_char3 := '&d_char3';

SELECT
 
    employee_first_name || employee_last_name into d_char2
FROM
    "kg".tbl_employee
    where employee_number = 379;

DBMS_OUTPUT.PUT_LINE('d_char3=' || d_char3);
DBMS_OUTPUT.PUT_LINE('d_char2=' || d_char2);
DBMS_OUTPUT.PUT_LINE('d_char=' || d_char);
DBMS_OUTPUT.PUT_LINE('d_number=' || d_number);
  DBMS_OUTPUT.PUT_LINE('Hello');
END;


