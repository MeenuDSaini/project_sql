CREATE DATABASE SQL_PROJECT;
USE SQL_PROJECT;

-- Schools Table
CREATE TABLE Schools (
    school_id INT PRIMARY KEY,
    school VARCHAR(50),
    website VARCHAR(50),
    description TEXT,
    LogoUrl VARCHAR(250)
);

-- Locations Table
CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    school_id INT,
    school VARCHAR(50),
    description TEXT,
    country_id INT,
    country_name VARCHAR(50),
    city_name VARCHAR(50),
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

-- Courses Table
CREATE TABLE Courses (
    school_id INT ,
    school VARCHAR(50),
    courses TEXT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

-- Comments Table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    name_person VARCHAR(50),
    host_program VARCHAR(50),
    Alumni boolean,
    JobTitle VARCHAR(50),
    school_id INT,
    school VARCHAR(50),
    graduatingYear INT,
    createdAt DATE,
    Tagline TEXT,
    overall_score FLOAT,
    curriculum FLOAT,
    jobsupport FLOAT,
    review_body TEXT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);
select * from schools;
select * from Locations;
select * from courses;
select * from Comments;