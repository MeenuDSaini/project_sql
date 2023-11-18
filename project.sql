CREATE DATABASE SQL_PROJECT;

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
    school_id INT PRIMARY KEY,
    school VARCHAR(50),
    courses TEXT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

-- Comments Table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    school VARCHAR(50),
    graduatingYear INT,
    comments TEXT,
    overall INT,
    curriculum INT,
    jobsupport INT,
    review_body TEXT
);
select * from schools;
select * from Locations;
select * from courses;
select * from Comments;