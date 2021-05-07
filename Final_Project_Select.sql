/* Selecting all tables. */
SELECT * FROM Marshall.ZIP;
SELECT * FROM Marshall.EMPLOYEE;
SELECT * FROM Marshall.MECHANIC;
SELECT * FROM Marshall.OFFICE_WORKER;
SELECT * FROM Marshall.TRUCK;
SELECT * FROM Marshall.DRIVER;
SELECT * FROM Marshall.JOB;
SELECT * FROM Marshall.CUSTOMER;
SELECT * FROM Marshall.INVOICE;
SELECT * FROM Marshall.PRODUCT;
SELECT * FROM Marshall.LINE;

/* Select a table with just drivers and the trucks they drive. */
SELECT e.EMP_ID, FNAME, LNAME, ADDRESS, z.CITY, z.STATE, z.ZIP_CODE, SSN, TRUCK_ID
	FROM Marshall.EMPLOYEE e JOIN Marshall.ZIP z ON e.ZIP_CODE = z.ZIP_CODE JOIN Marshall.DRIVER d ON e.EMP_ID = d.EMP_ID;

/* Select a table with just mechanics. */
SELECT e.EMP_ID, FNAME, LNAME, ADDRESS, z.CITY, z.STATE, z.ZIP_CODE, SSN
	FROM Marshall.EMPLOYEE e JOIN Marshall.ZIP z ON e.ZIP_CODE = z.ZIP_CODE JOIN Marshall.MECHANIC m ON e.EMP_ID = m.EMP_ID;

/* Select a table with just office workers. */
SELECT e.EMP_ID, FNAME, LNAME, ADDRESS, z.CITY, z.STATE, z.ZIP_CODE, SSN
	FROM Marshall.EMPLOYEE e JOIN Marshall.ZIP z ON e.ZIP_CODE = z.ZIP_CODE JOIN Marshall.OFFICE_WORKER o ON e.EMP_ID = o.EMP_ID;

/* Select a table with customer and invoice data together. */
SELECT c.CUST_ID, c.FNAME, c.LNAME, COM_NAME, i.INV_ID, OFFICE_EMP_ID, DRIVER_EMP_ID, INV_DATE, ADDRESS, z.CITY, z.STATE, z.ZIP_CODE
	FROM Marshall.CUSTOMER c JOIN Marshall.INVOICE i ON c.CUST_ID = i.CUST_ID JOIN Marshall.ZIP z ON i.ZIP_CODE = z.ZIP_CODE;

/* Select a table with a list of jobs along with mechanic and truck information. */
SELECT JOB_ID, m.EMP_ID, e.FNAME, e.LNAME, j.TRUCK_ID, MAX_CAP, LENGTH, DATE_WORKED_ON, PROBLEM, SOLVED
	FROM Marshall.EMPLOYEE e JOIN Marshall.MECHANIC m ON e.EMP_ID = m.EMP_ID JOIN Marshall.JOB j ON j.EMP_ID = m.EMP_ID JOIN Marshall.TRUCK t ON t.TRUCK_ID = j.TRUCK_ID;