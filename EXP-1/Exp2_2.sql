
-- create
CREATE TABLE EMPLOYEE (
  empId int  primary KEY,
  name varchar(15),
  dept varchar(10),
  managerId int

);


INSERT INTO EMPLOYEE(empId,name,dept,managerId) VALUES (1, 'Alice', 'HR',null),
 (2, 'Bob', 'Finance',1), 
 (3, 'Charlie', 'IT',1),
 (4, 'David', 'Finance',2),
 (5, 'Eve', 'IT',3),
 (6, 'Frank', 'HR',1);

-- fetch 
SELECT * FROM EMPLOYEE;

ALTER TABLE EMPLOYEE
ADD constraint FK_EMPLoYEE FOREIGN KEY(managerId)
references EMPLOYEE(empId)

select E1.name as[EMPLOYEE_Name], E2.name as[Manager_Name],E1.dept as[EMPLOYEE dept], E2.dept as[Manager dept]
from EMPLOYEE as E1
Left Outer join
EMPLOYEE as E2 
on E1.managerId=E2.empId
