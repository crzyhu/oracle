--------------------------------------------------------------------------------------------------
-- inner join 
SELECT E.*,a.*
FROM
    tbl_employee E inner join tbl_attendance A on a.employee_number = e.employee_number
    where E.employee_number = 123
    and Extract (year from attendance_month) = 2021;
    
    
-- outher left/right join 
SELECT E.*,a.*
FROM
    tbl_employee E right  outer join tbl_attendance A on a.employee_number = e.employee_number
    where E.employee_number = 123
    and Extract (year from attendance_month) = 2021;  
    
--------------------------------------------------------------------------------------------------
-- natural join 
SELECT *FROM
    tbl_employee natural join tbl_attendance 
    where employee_number = 123
    and Extract (year from attendance_month) = 2021;
    
    SELECT * FROM
    tbl_employee  join tbl_attendance using(employee_number)
    where employee_number = 123
    and Extract (year from attendance_month) = 2021;
    
-------------------------------------------------------------------------------
-- cross join 
SELECT *FROM
    tbl_employee cross join tbl_attendance 
   