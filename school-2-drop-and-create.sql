-- Drop the students table


Drop table if exists students;

-- Recreate it


Create table students (
    id integer primary key autoincrement,
    first_name text,
    last_name text,
    email text
);