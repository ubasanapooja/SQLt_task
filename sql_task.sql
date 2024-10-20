CREATE DATABASE GUVI;

USE GUVI;

CREATE TABLE Employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

SELECT ename, sal
FROM Employee
WHERE sal >= 2200;

SELECT *
FROM Employee
WHERE comm IS NULL;

SELECT ename, sal
FROM Employee
WHERE sal NOT BETWEEN 2500 AND 4000;

SELECT ename, job, sal
FROM Employee
WHERE mgr is NULL;

SELECT ename
FROM Employee
WHERE ename LIKE '%A%';

SELECT ename
FROM Employee
WHERE ename LIKE '%T';

CREATE TABLE employees (
    empcode INT PRIMARY KEY,
    empname VARCHAR(50),
    empage INT,
    esalary INT
);

SELECT * FROM employees;


