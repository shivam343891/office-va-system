-- triggers.sql

-- Trigger: tr_appointments_creationdate
CREATE OR REPLACE TRIGGER tr_appointments_creationdate
BEFORE INSERT ON Appointments
FOR EACH ROW
BEGIN
    :NEW.CreationDate := SYSTIMESTAMP;
END;
/

-- Trigger: tr_appointments_lastmodified
CREATE OR REPLACE TRIGGER tr_appointments_lastmodified
BEFORE UPDATE ON Appointments
FOR EACH ROW
BEGIN
    :NEW.LastModified := SYSTIMESTAMP;
END;
/

-- Trigger: tr_tasks_automatic_assignee
CREATE OR REPLACE TRIGGER tr_tasks_automatic_assignee
BEFORE INSERT ON Tasks
FOR EACH ROW
BEGIN
    IF :NEW.AssigneeID IS NULL THEN
        SELECT EmployeeID INTO :NEW.AssigneeID FROM Employees WHERE JobTitle = 'Manager' AND ROWNUM = 1;
    END IF;
END;
/

-- Trigger: tr_users_unique_username
CREATE OR REPLACE TRIGGER tr_users_unique_username
BEFORE INSERT OR UPDATE ON Users
FOR EACH ROW
BEGIN
    IF :NEW.Username != :OLD.Username THEN
        IF EXISTS (SELECT 1 FROM Users WHERE Username = :NEW.Username) THEN
            RAISE_APPLICATION_ERROR(-20001, 'Username already exists. Please choose a different username.');
        END IF;
    END IF;
END;
/

-- Trigger: tr_employees_delete_associated_tasks
CREATE OR REPLACE TRIGGER tr_employees_delete_associated_tasks
BEFORE DELETE ON Employees
FOR EACH ROW
BEGIN
    DELETE FROM Tasks WHERE AssigneeID = :OLD.EmployeeID;
END;
/
