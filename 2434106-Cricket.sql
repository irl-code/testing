CREATE TABLE worker (
    worker_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    gender VARCHAR(1),
    salary INT,
    supervisor_id INT,
    department_id INT
);

CREATE TABLE department_info (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(40),
    manager_id INT,
    manager_start_date DATE,
    FOREIGN KEY (manager_id) REFERENCES worker (worker_id) ON DELETE SET NULL
);

ALTER TABLE worker
ADD FOREIGN KEY (department_id) REFERENCES department_info (department_id) ON DELETE SET NULL;

ALTER TABLE worker
ADD FOREIGN KEY (supervisor_id) REFERENCES worker (worker_id) ON DELETE SET NULL;

CREATE TABLE business_partner (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(40),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department_info (department_id) ON DELETE SET NULL
);

CREATE TABLE collaboration (
    worker_id INT,
    partner_id INT,
    total_revenue INT,
    PRIMARY KEY (worker_id, partner_id),
    FOREIGN KEY (worker_id) REFERENCES worker (worker_id) ON DELETE CASCADE,
    FOREIGN KEY (partner_id) REFERENCES business_partner (partner_id) ON DELETE CASCADE
);

CREATE TABLE supplier_department (
    department_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY (department_id, supplier_name),
    FOREIGN KEY (department_id) REFERENCES department_info (department_id) ON DELETE CASCADE
);

-- -----------------------------------------------------------------------------
-- Corporate
INSERT INTO
    worker
VALUES
    (
        100,
        'David',
        'Wallace',
        '1967-11-17',
        'M',
        250000,
        NULL,
        NULL
    );

INSERT INTO
    department_info
VALUES
    (1, 'Corporate', 100, '2006-02-09');

UPDATE worker
SET
    department_id = 1
WHERE
    worker_id = 100;

INSERT INTO
    worker
VALUES
    (
        101,
        'Jan',
        'Levinson',
        '1961-05-11',
        'F',
        110000,
        100,
        1
    );

-- Scranton
INSERT INTO
    worker
VALUES
    (
        102,
        'Michael',
        'Scott',
        '1964-03-15',
        'M',
        75000,
        100,
        NULL
    );

INSERT INTO
    department_info
VALUES
    (2, 'Scranton', 102, '1992-04-06');

UPDATE worker
SET
    department_id = 2
WHERE
    worker_id = 102;

INSERT INTO
    worker
VALUES
    (
        103,
        'Angela',
        'Martin',
        '1971-06-25',
        'F',
        63000,
        102,
        2
    );

INSERT INTO
    worker
VALUES
    (
        104,
        'Kelly',
        'Kapoor',
        '1980-02-05',
        'F',
        55000,
        102,
        2
    );

INSERT INTO
    worker
VALUES
    (
        105,
        'Stanley',
        'Hudson',
        '1958-02-19',
        'M',
        69000,
        102,
        2
    );

-- Stamford
INSERT INTO
    worker
VALUES
    (
        106,
        'Josh',
        'Porter',
        '1969-09-05',
        'M',
        78000,
        100,
        NULL
    );

INSERT INTO
    department_info
VALUES
    (3, 'Stamford', 106, '1998-02-13');

UPDATE worker
SET
    department_id = 3
WHERE
    worker_id = 106;

INSERT INTO
    worker
VALUES
    (
        107,
        'Andy',
        'Bernard',
        '1973-07-22',
        'M',
        65000,
        106,
        3
    );

INSERT INTO
    worker
VALUES
    (
        108,
        'Jim',
        'Halpert',
        '1978-10-01',
        'M',
        71000,
        106,
        3
    );

-- SUPPLIER_DEPARTMENT
INSERT INTO
    supplier_department
VALUES
    (2, 'Hammer Mill', 'Paper');

INSERT INTO
    supplier_department
VALUES
    (2, 'Uni-ball', 'Writing Utensils');

INSERT INTO
    supplier_department
VALUES
    (3, 'Patriot Paper', 'Paper');

INSERT INTO
    supplier_department
VALUES
    (2, 'J.T. Forms & Labels', 'Custom Forms');

INSERT INTO
    supplier_department
VALUES
    (3, 'Uni-ball', 'Writing Utensils');

INSERT INTO
    supplier_department
VALUES
    (3, 'Hammer Mill', 'Paper');

INSERT INTO
    supplier_department
VALUES
    (3, 'Stamford Labels', 'Custom Forms');

-- BUSINESS_PARTNER
INSERT INTO
    business_partner
VALUES
    (400, 'Dunmore Highschool', 2);

INSERT INTO
    business_partner
VALUES
    (401, 'Lackawanna County', 2);

INSERT INTO
    business_partner
VALUES
    (402, 'FedEx', 3);

INSERT INTO
    business_partner
VALUES
    (403, 'John Daly Law, LLC', 3);

INSERT INTO
    business_partner
VALUES
    (404, 'Scranton Whitepages', 2);

INSERT INTO
    business_partner
VALUES
    (405, 'Times Newspaper', 3);

INSERT INTO
    business_partner
VALUES
    (406, 'FedEx', 2);

-- COLLABORATION
INSERT INTO
    collaboration
VALUES
    (105, 400, 55000);

INSERT INTO
    collaboration
VALUES
    (102, 401, 267000);

INSERT INTO
    collaboration
VALUES
    (108, 402, 22500);

INSERT INTO
    collaboration
VALUES
    (107, 403, 5000);

INSERT INTO
    collaboration
VALUES
    (108, 403, 12000);

INSERT INTO
    collaboration
VALUES
    (105, 404, 33000);

INSERT INTO
    collaboration
VALUES
    (107, 405, 26000);

INSERT INTO
    collaboration
VALUES
    (102, 406, 15000);

INSERT INTO
    collaboration
VALUES
    (105, 406, 130000);

SELECT
    *
FROM
    supplier_department;