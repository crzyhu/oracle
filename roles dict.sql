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

