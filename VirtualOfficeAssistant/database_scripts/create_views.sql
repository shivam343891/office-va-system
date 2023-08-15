-- create_views.sql

-- Example View 1: Get upcoming appointments for a user
CREATE OR REPLACE VIEW UpcomingAppointments AS
SELECT AppointmentID, Title, StartTime, EndTime, Attendees, Reminder
FROM Appointments
WHERE StartTime > SYSTIMESTAMP;

-- Example View 2: Get all tasks with assignee details
CREATE OR REPLACE VIEW TasksWithAssignees AS
SELECT t.TaskID, t.Title, t.Description, t.DueDate, t.Status, t.Priority, t.Notes, e.Name AS AssigneeName, e.JobTitle AS AssigneeJobTitle
FROM Tasks t
LEFT JOIN Employees e ON t.AssigneeID = e.EmployeeID;

-- Example View 3: Get document details with owner information
CREATE OR REPLACE VIEW DocumentsWithOwners AS
SELECT d.DocumentID, d.FileName, d.FilePath, d.Tags, u.Username AS OwnerUsername, u.Email AS OwnerEmail
FROM Documents d
LEFT JOIN Users u ON d.OwnerID = u.UserID;
