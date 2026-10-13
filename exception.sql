DECLARE

BEGIN
	FOR I IN 1..1000 LOOP
		INSERT INTO employee (ssn, name)
		VALUES (900000000 + I, ‘John Doe’);
	END LOOP;
	COMMIT;


EXCEPTION
	--Output when no records are returned
	WHEN no_data_found THEN
		DBMS_OUTPUT.PUT_LINE ('No employee found');
		
	WHEN others THEN
		DBMS_OUTPUT.PUT_LINE ('Error encountered, but cause unknown');
	WHEN OTHERS THEN
		ROLLBACK;

END;
/



