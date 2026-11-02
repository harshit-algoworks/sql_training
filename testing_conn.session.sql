create Table departments (
    department_id serial PRIMARY KEY, -- serial helps to auto increment the department_id
    department_name varchar(100) NOT NULL, -- can't be null, must have a name
)