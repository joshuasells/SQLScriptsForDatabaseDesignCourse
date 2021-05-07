CREATE SCHEMA marshall;

CREATE TABLE marshall.zip (
	zipCode VARCHAR(5),
    city VARCHAR(20),
    state VARCHAR(20),
    PRIMARY KEY (zipCode)
);

CREATE TABLE marshall.employee (
	emp_id INTEGER,
    fName VARCHAR(20),
    lName VARCHAR(20),
    address VARCHAR(50),
    zipCode VARCHAR(5),
    ssn VARCHAR(11),
    empType VARCHAR(20),
    PRIMARY KEY (emp_id),
    FOREIGN KEY (zipCode)
		REFERENCES marshall.zip(zipCode)
);

CREATE TABLE marshall.mechanic (
	emp_id INTEGER,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_id)
		REFERENCES marshall.employee(emp_id)
);

CREATE TABLE marshall.officeWorker (
	emp_id INTEGER,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_id)
		REFERENCES marshall.employee(emp_id)
);

CREATE TABLE marshall.truck (
	truck_id INTEGER,
    maxCap INTEGER,
    tckLength INTEGER,
    PRIMARY KEY (truck_id)
);

CREATE TABLE marshall.driver (
	emp_id INTEGER,
    truck_id INTEGER,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (emp_id)
		REFERENCES marshall.employee(emp_id),
    FOREIGN KEY (truck_id)
		REFERENCES marshall.truck(truck_id)
);

CREATE TABLE marshall.job (
	job_id INTEGER,
    emp_id INTEGER,
    truck_id INTEGER,
    dateWorkedOn DATE,
    problem VARCHAR(500),
    solved BOOLEAN,
    PRIMARY KEY (job_id),
    FOREIGN KEY (emp_id)
		REFERENCES marshall.mechanic(emp_id),
    FOREIGN KEY (truck_id)
		REFERENCES marshall.truck(truck_id)
);

CREATE TABLE marshall.customer (
	cust_id INTEGER,
    fName VARCHAR(20),
    lName VARCHAR(20),
    comName VARCHAR(50),
    PRIMARY KEY (cust_id)
);

CREATE TABLE marshall.invoice (
	inv_id INTEGER,
    cust_id INTEGER,
    officeEmp_id INTEGER,
    driverEmp_id INTEGER,
    invDate DATE,
    address VARCHAR(50),
    zipCode VARCHAR(5),
    PRIMARY KEY (inv_id),
    FOREIGN KEY (cust_id)
		REFERENCES marshall.customer(cust_id),
    FOREIGN KEY (officeEmp_id)
		REFERENCES marshall.officeWorker(emp_id),
    FOREIGN KEY (driverEmp_id)
		REFERENCES marshall.driver(emp_id),
    FOREIGN KEY (zipCode)
		REFERENCES marshall.zip(zipCode)
);

CREATE TABLE marshall.product (
	prod_id INTEGER,
    prodName VARCHAR(50),
    prodDescription VARCHAR(200),
    price INTEGER,
    PRIMARY KEY (prod_id)
);

CREATE TABLE marshall.line (
	inv_id INTEGER,
    prod_id INTEGER,
    quantity INTEGER,
    PRIMARY KEY (inv_id, prod_id),
    FOREIGN KEY (inv_id)
		REFERENCES marshall.invoice(inv_id),
    FOREIGN KEY (prod_id)
		REFERENCES marshall.product(prod_id)
);