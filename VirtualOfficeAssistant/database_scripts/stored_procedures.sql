-- stored_procedures.sql

-- Procedure to Create an Appointment
CREATE OR REPLACE PROCEDURE CreateAppointment(
    p_title VARCHAR2,
    p_description VARCHAR2,
    p_start_time TIMESTAMP,
    p_end_time TIMESTAMP,
    p_attendees VARCHAR2,
    p_reminder VARCHAR2,
    p_notes VARCHAR2
)
IS
BEGIN
    INSERT INTO Appointments (AppointmentID, Title, Description, StartTime, EndTime, Attendees, Reminder, Notes)
    VALUES (AppointmentSeq.NEXTVAL, p_title, p_description, p_start_time, p_end_time, p_attendees, p_reminder, p_notes);
    COMMIT;
END;
/

-- Procedure to Assign a Task to an Employee
CREATE OR REPLACE PROCEDURE AssignTask(
    p_title VARCHAR2,
    p_description VARCHAR2,
    p_assignee_id NUMBER,
    p_due_date TIMESTAMP,
    p_status VARCHAR2,
    p_priority VARCHAR2,
    p_notes VARCHAR2
)
IS
BEGIN
    INSERT INTO Tasks (TaskID, Title, Description, AssigneeID, DueDate, Status, Priority, Notes)
    VALUES (TaskSeq.NEXTVAL, p_title, p_description, p_assignee_id, p_due_date, p_status, p_priority, p_notes);
    COMMIT;
END;
/
