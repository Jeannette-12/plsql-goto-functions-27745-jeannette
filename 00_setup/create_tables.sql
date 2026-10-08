BEGIN EXECUTE IMMEDIATE 'DROP TABLE employees'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE departments'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

CREATE TABLE departments (
    dept_id   NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    emp_id     NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name  VARCHAR2(50),
    salary     NUMBER(10,2),
    hire_date  DATE,
    dept_id    NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'Sales');
INSERT INTO departments VALUES (30, 'IT');

INSERT INTO employees VALUES (101, 'Alice',    'Uwimana',  250000, DATE '2018-03-15', 10);
INSERT INTO employees VALUES (102, 'Bosco',    'Habimana',  85000, DATE '2021-07-01', 20);
INSERT INTO employees VALUES (103, 'Claudine', 'Mukamana', 520000, DATE '2015-01-10', 10);
INSERT INTO employees VALUES (104, 'David',    'Nkusi',     45000, DATE '2023-09-20', 30);
INSERT INTO employees VALUES (105, 'Esther',   'Ingabire', 120000, DATE '2020-05-05', NULL);
INSERT INTO employees VALUES (106, 'Frank',    'Kamali',     -500, DATE '2030-01-01', 30);

COMMIT;