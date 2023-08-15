-- alter_tables.sql

-- Add a new column to the Users table
ALTER TABLE Users
ADD AdditionalColumn VARCHAR2(100);

-- Modify data type of an existing column in the Appointments table
ALTER TABLE Appointments
MODIFY StartTime TIMESTAMP WITH TIME ZONE;

-- Add foreign key constraint to link Appointments table with Users table
ALTER TABLE Appointments
ADD CONSTRAINT FK_Appointments_Users FOREIGN KEY (UserID)
REFERENCES Users(UserID);

-- Add unique constraint to the Documents table for FileName column
ALTER TABLE Documents
ADD CONSTRAINT UQ_Documents_FileName UNIQUE (FileName);

-- Rename a column in the Tasks table
ALTER TABLE Tasks
RENAME COLUMN OldColumnName TO NewColumnName;

-- Drop a column from the Employees table
ALTER TABLE Employees
DROP COLUMN ColumnToRemove;
