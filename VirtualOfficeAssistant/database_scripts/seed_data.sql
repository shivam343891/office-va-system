-- seed_data.sql

-- Insert initial user data
INSERT INTO Users (UserID, Username, Email, Password)
VALUES (1, 'john_doe', 'john.doe@example.com', 'hashed_password'),
       (2, 'jane_smith', 'jane.smith@example.com', 'hashed_password');

-- Insert initial employee data
INSERT INTO Employees (EmployeeID, Name, JobTitle, ContactInfo)
VALUES (1, 'John Doe', 'Software Engineer', 'john.doe@example.com'),
       (2, 'Jane Smith', 'Project Manager', 'jane.smith@example.com');

-- Insert initial project data
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, ProjectManagerID)
VALUES (1, 'Virtual Assistant Project', TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 2);

-- Insert initial appointments data
INSERT INTO Appointments (AppointmentID, Title, Description, StartTime, EndTime, Attendees, Reminder, Notes)
VALUES (1, 'Team Meeting', 'Discuss project progress', TO_TIMESTAMP('2023-08-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_TIMESTAMP('2023-08-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'john.doe@example.com, jane.smith@example.com',
        '15 minutes before', 'Bring project status report.');

-- Insert initial documents data
INSERT INTO Documents (DocumentID, FileName, FilePath, OwnerID, CreationDate, Tags)
VALUES (1, 'Project_Plan.docx', 'documents/project_plan.docx', 2, TO_TIMESTAMP('2023-08-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'),
        'project, plan'),
       (2, 'Meeting_Notes.txt', 'documents/meeting_notes.txt', 1, TO_TIMESTAMP('2023-08-05 12:30:00', 'YYYY-MM-DD HH24:MI:SS'),
        'meeting, notes');

-- Insert initial tasks data
INSERT INTO Tasks (TaskID, Title, Description, AssigneeID, DueDate, Status, Priority, Notes)
VALUES (1, 'Update UI Design', 'Update the user interface design for the application', 1,
        TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'In Progress', 'High', 'Use modern design principles.'),
       (2, 'Implement NLP Module', 'Implement NLP functionality for text processing', 1,
        TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Not Started', 'High', 'Use NLTK library for NLP processing.');

-- Insert more initial data as needed...

COMMIT;
