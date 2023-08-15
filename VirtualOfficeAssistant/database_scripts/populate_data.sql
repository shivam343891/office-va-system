-- populate_data.sql

-- Insert sample data into Users table
INSERT INTO Users (UserID, Username, Email, Password)
VALUES (1, 'john_doe', 'john.doe@example.com', 'hashed_password_1');

INSERT INTO Users (UserID, Username, Email, Password)
VALUES (2, 'jane_smith', 'jane.smith@example.com', 'hashed_password_2');

-- Insert sample data into Appointments table
INSERT INTO Appointments (AppointmentID, Title, Description, StartTime, EndTime, Attendees, Reminder, Notes)
VALUES (1, 'Meeting with Team', 'Discuss project progress', TO_TIMESTAMP('2023-08-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'john_doe,jane_smith', '15 minutes before', 'Bring project reports');

-- Insert sample data into Documents table
INSERT INTO Documents (DocumentID, FileName, FilePath, OwnerID, CreationDate, Tags)
VALUES (1, 'Project Report.docx', '/documents/project_report.docx', 1, TO_TIMESTAMP('2023-08-05 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'project,report');

-- Insert sample data into Tasks table
INSERT INTO Tasks (TaskID, Title, Description, AssigneeID, DueDate, Status, Priority, Notes)
VALUES (1, 'Finish Feature X', 'Implement and test Feature X', 1, TO_TIMESTAMP('2023-08-15 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'In Progress', 'High', 'Contact team for any blockers');

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, Name, JobTitle, ContactInfo)
VALUES (1, 'John Doe', 'Software Engineer', 'john.doe@example.com');

INSERT INTO Employees (EmployeeID, Name, JobTitle, ContactInfo)
VALUES (2, 'Jane Smith', 'Project Manager', 'jane.smith@example.com');

-- Insert sample data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, ProjectManagerID)
VALUES (1, 'Project ABC', TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-09-30', 'YYYY-MM-DD'), 2);
