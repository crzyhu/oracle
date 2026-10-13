SELECT
    employee_number,
    attendance_month,
    number_attendance,
    rownum,
    ROW_NUMBER() over (partition by employee_number order by attendance_month)as row_number,
    rank() over (partition by employee_number order by attendance_month)as rank,
    dense_rank() over (partition by employee_number order by attendance_month)as dense,
        first_value(number_attendance) over (partition by employee_number order by attendance_month)as first_value,

    last_value(number_attendance) over (partition by employee_number order by attendance_month)as last_value,
    lag(number_attendance,3) over (partition by employee_number order by attendance_month)as lag_value,
    lead(number_attendance,3) over (partition by employee_number order by attendance_month)as lead_value
FROM
(select * from  tbl_attendance
 union all
 select * from  tbl_attendance
)
 