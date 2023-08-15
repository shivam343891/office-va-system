-- create_indexes.sql

-- Index on Users table
CREATE INDEX idx_users_username ON Users(Username);
CREATE INDEX idx_users_email ON Users(Email);

-- Index on Appointments table
CREATE INDEX idx_appointments_start_time ON Appointments(StartTime);
CREATE INDEX idx_appointments_end_time ON Appointments(EndTime);

-- Index on Documents table
CREATE INDEX idx_documents_owner_id ON Documents(OwnerID);

-- Index on Tasks table
CREATE INDEX idx_tasks_assignee_id ON Tasks(AssigneeID);
CREATE INDEX idx_tasks_due_date ON Tasks(DueDate);

-- Index on Employees table
CREATE INDEX idx_employees_job_title ON Employees(JobTitle);

-- Index on Projects table
CREATE INDEX idx_projects_project_manager_id ON Projects(ProjectManagerID);

