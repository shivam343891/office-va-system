-- create_tables.sql

-- Drop tables (only for testing purposes, comment out if not needed)
-- DROP TABLE Appointments;
-- DROP TABLE Documents;
-- DROP TABLE Tasks;
-- DROP TABLE Employees;
-- DROP TABLE Projects;
-- DROP TABLE Users;

-- Create Users table
CREATE TABLE Users (
    UserID NUMBER PRIMARY KEY,
    Username VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    Password VARCHAR2(100) NOT NULL
    -- Add any additional user-related columns here
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID NUMBER PRIMARY KEY,
    Title VARCHAR2(100) NOT NULL,
    Description VARCHAR2(500),
    StartTime TIMESTAMP NOT NULL,
    EndTime TIMESTAMP NOT NULL,
    Attendees VARCHAR2(200),
    Reminder VARCHAR2(100),
    Notes VARCHAR2(500)
    -- Add any additional appointment-related columns here
);

-- Create Documents table
CREATE TABLE Documents (
    DocumentID NUMBER PRIMARY KEY,
    FileName VARCHAR2(100) NOT NULL,
    FilePath VARCHAR2(200) NOT NULL,
    OwnerID NUMBER,
    CreationDate TIMESTAMP NOT NULL,
    Tags VARCHAR2(200)
    -- Add any additional document-related columns here
);

-- Create Tasks table
CREATE TABLE Tasks (
    TaskID NUMBER PRIMARY KEY,
    Title VARCHAR2(100) NOT NULL,
    Description VARCHAR2(500),
    AssigneeID NUMBER,
    DueDate TIMESTAMP,
    Status VARCHAR2(50),
    Priority VARCHAR2(50),
    Notes VARCHAR2(500)
    -- Add any additional task-related columns here
);

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    JobTitle VARCHAR2(100),
    ContactInfo VARCHAR2(200)
    -- Add any additional employee-related columns here
);

-- Create Projects table
CREATE TABLE Projects (
    ProjectID NUMBER PRIMARY KEY,
    ProjectName VARCHAR2(100) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    ProjectManagerID NUMBER
    -- Add any additional project-related columns here
);

