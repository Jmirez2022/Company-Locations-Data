DROP DATABASE IF EXISTS departments 2;
CREATE DATABASE IF NOT EXISTS departments 2;
USE departments 2;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO'


CREATE TABLE departments 2 (
    dept_no     CHAR(5)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

CREATE TABLE dept_manager 2 (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(5)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no,dept_no)
); 


# shows only the current department for each employee
CREATE OR REPLACE VIEW current_dept_emp AS
    SELECT l.emp_no, dept_no, l.from_date, l.to_date
    FROM dept_emp d
        INNER JOIN dept_emp_latest_date l
        ON d.emp_no=l.emp_no AND d.from_date=l.from_date AND l.to_date = d.to_date;

flush  logs;

SELECT 'LOADING departments 2' as 'INFO';
source load_departments.dump ;
SELECT 'LOADING dept_manager 2' as 'INFO';
source load_dept_manager.dump ;