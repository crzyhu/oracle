SELECT
    1
FROM
    dual;

DROP TABLE test01;

CREATE TABLE test01 (
    fnqme CHAR
);

INSERT INTO test01 VALUES ( 'd' );

EXPLAIN PLAN
    FOR
SELECT
    fnqme,
    length(fnqme)
FROM
    test01;