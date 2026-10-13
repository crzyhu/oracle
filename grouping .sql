SELECT tbl_employee.department, employee_number, tbl_attendance.attendance_month, sum(number_attendance),
grouping(attendance_month) as grouping_attendance_month,
grouping_id (tbl_employee.department, employee_number, tbl_attendance.attendance_month) as grouping_id

FROM tbl_employee join tbl_attendance using(employee_number)
where employee_number= 123
--group by tbl_employee.department, employee_number, tbl_attendance.attendance_month
--group by rollup (tbl_employee.department, employee_number, tbl_attendance.attendance_month)
--group by cube (tbl_employee.department, employee_number, tbl_attendance.attendance_month)

group by grouping sets ((tbl_employee.department, employee_number, tbl_attendance.attendance_month),(tbl_employee.department, employee_number),(department),())




  
order by tbl_employee.department nulls first, employee_number nulls first, tbl_attendance.attendance_month nulls first;

