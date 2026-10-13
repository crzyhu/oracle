SELECT *
FROM
    "kg".department;
    
alter table department
drop column MGRSSN;

alter table department
set unused (MGRSTARTDATE);


alter table department
drop unused (MGRSTARTDATE);