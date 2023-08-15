-- create_constraints.sql

-- Primary Key Constraint
ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY (UserID);

-- Foreign Key Constraint
ALTER TABLE Appointments
ADD CONSTRAINT FK_Appointments_Users FOREIGN KEY (UserID)
REFERENCES Users (UserID);

-- Unique Constraint
ALTER TABLE Documents
ADD CONSTRAINT UK_Documents_FileName UNIQUE (FileName);

-- Check Constraint
ALTER TABLE Tasks
ADD CONSTRAINT CK_Tasks_Status CHECK (Status IN ('Open', 'In Progress', 'Completed'));

-- Not Null Constraint
ALTER TABLE Projects
MODIFY (ProjectName VARCHAR2(100) NOT NULL);

-- Composite Key Constraint
ALTER TABLE TaskAssignments
ADD CONSTRAINT PK_TaskAssignments PRIMARY KEY (TaskID, AssigneeID);
