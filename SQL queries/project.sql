CREATE DATABASE SQL_PROJECT;
USE SQL_PROJECT;

-- Schools Table
CREATE TABLE schools (
    school_id INT PRIMARY KEY,
    school VARCHAR(100),
    website VARCHAR(250),
    description_school TEXT,
    LogoUrl TEXT
);

-- Locations Table
CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    school_id INT,
    school VARCHAR(100),
    description_loc TEXT,
    state_name VARCHAR(100),
    country_name VARCHAR(100),
    city_name VARCHAR(100),
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

-- Courses Table
CREATE TABLE Courses (
    school_id INT ,
    school VARCHAR(100),
    courses TEXT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

-- Comments Table
CREATE TABLE Comments (
    id INT PRIMARY KEY,
    host_program TEXT,
    graduatingYear INT,
    isAlumni BOOL,
    JobTitle TEXT,
    Tagline TEXT,
    overall_score FLOAT,
    curriculum FLOAT,
    jobsupport FLOAT,
    review_body TEXT,
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

CREATE TABLE Comments_trial (
    id INT PRIMARY KEY,
    graduatingYear INT,
    overall_score FLOAT,
    curriculum FLOAT,
    jobsupport FLOAT,
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

CREATE TABLE Course_price (
    school_id INT,
    school VARCHAR(100),
    courses TEXT,
    price FLOAT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

CREATE TABLE badges (
    badges_name VARCHAR(100),
    description_badge TEXT,
    school VARCHAR(100),
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)badges
);

select * from schools;
select * from locations;
select * from courses;
select * from comments;
select * from course_price;
select * from badges;
