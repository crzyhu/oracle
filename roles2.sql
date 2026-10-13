SELECT USER FROM DUAL; 

 

GRANT CONNECT, RESOURCE, DBA TO C##phillip; 

--CONNECT Includes the following system privileges: 

--ALTER SESSION, CREATE CLUSTER, CREATE DATABASE LINK, CREATE SEQUENCE, 

--CREATE SESSION, CREATE SYNONYM, CREATE TABLE, CREATE VIEW 

 

--RESOURCE Includes the following system privileges: 

--CREATE CLUSTER, CREATE INDEXTYPE, CREATE OPERATOR, CREATE PROCEDURE, 

--CREATE SEQUENCE, CREATE TABLE, CREATE TRIGGER, CREATE TYPE 

 

--All system privileges WITH ADMIN OPTION 

--Oracle Corporation recommends that you design your own roles for database secur 

--, rather than relying on these roles. 

 

REVOKE RESOURCE FROM C##phillip; 

 

GRANT CREATE ANY TABLE TO C##phillip; 

 

GRANT CREATE ANY TABLE TO PUBLIC; --all users 

 

 

SELECT * FROM USER_TAB_PRIVS; 

SELECT * FROM ALL_TAB_PRIVS; 

SELECT * FROM DBA_TAB_PRIVS; 

--DBA view lists all grants on all objects in the database. 

--ALL view lists the grants on objects where the user or PUBLIC is the grantee. 

--USER view lists grants on all objects where the current user is the grantee. 

 

SELECT * FROM ALL_TAB_PRIVS_RECD; 

SELECT * FROM USER_TAB_PRIVS_RECD; 

--ALL view lists the all object grants made by the current user or made on the 

--USER view lists grants on all objects owned by the current user. 

 

SELECT * FROM USER_SYS_PRIVS; 

SELECT * FROM DBA_SYS_PRIVS; 

--DBA view lists system privileges granted to users and roles. 

--USER view lists system privileges granted to the current user. 

 

SELECT * FROM SESSION_PRIVS; 

--This view lists the privileges that are currently enabled for the user. 

SELECT * FROM SESSION_ROLES; 

--This view lists the roles that are currently enabled to the user. 

 

CREATE OR REPLACE DIRECTORY ext_tab_dir AS 'C:\SQL'; 

GRANT READ ON DIRECTORY ext_tab_dir TO sys; 

 

CREATE TABLE emp_load ( 

  first_name CHAR(15), 

  last_name CHAR(20), 

  year_of_birth INT 

) 

ORGANIZATION EXTERNAL ( 

  TYPE ORACLE_LOADER 

  DEFAULT DIRECTORY ext_tab_dir 

  ACCESS PARAMETERS ( 

    FIELDS TERMINATED BY "|" 

  ) 

  LOCATION ('info.dat') 

); 

 

SELECT * FROM emp_load; 

 

DROP TABLE emp_load; 

DROP DIRECTORY ext_tab_dir; 