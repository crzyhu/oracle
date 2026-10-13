create user c##kg2 identified by Kg44559900;
--drop user c##kg2
grant create session to c##kg2;
grant connect, resource, DBA to c##kg2;
connect c##kg2

select user from dual;
------------------------------------------------------------------
--CONNECT Includes the following system privileges: 
--ALTER SESSION, CREATE CLUSTER, CREATE DATABASE LINK, CREATE SEQUENCE, 
--CREATE SESSION, CREATE SYNONYM, CREATE TABLE, CREATE VIEW 
--------------------------------------------------------------------------
 --RESOURCE Includes the following system privileges: 
--CREATE CLUSTER, CREATE INDEXTYPE, CREATE OPERATOR, CREATE PROCEDURE, 
--CREATE SEQUENCE, CREATE TABLE, CREATE TRIGGER, CREATE TYPE 

-------------------------------------------------------------------------- 
-- DBA
--All system privileges WITH ADMIN OPTION 
--Oracle Corporation recommends that you design your own roles for database security--, rather than relying on these roles. 

 REVOKE RESOURCE FROM c##kg2; 
  REVOKE DBA FROM c##kg2; 
  
GRANT CREATE ANY TABLE TO c##kg2; 

GRANT CREATE ANY TABLE TO PUBLIC; -- granted to all users
GRANT CREATE ANY TABLE TO c##kg2 with admin option; -- user can grant role

show user
------------------------
-- create role
create role c##kg_role;
grant select,insert,update, delete on any table_name to c##kg_role;
drop user c##kg_role cascade  -- with all uses's objects 

select * from user_tab_privs where owner like '%kg%'

select * from user_sys_privs where owner like '%kg%'


select * from session_privs