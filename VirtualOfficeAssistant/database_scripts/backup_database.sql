DEFINE backup_directory = 'C:\app\Backups'

-- Create a directory object for the backup location
CREATE OR REPLACE DIRECTORY backup_dir AS '&backup_directory';

-- Create a full database backup using Data Pump (expdp)
-- Replace '<username>' and '<password>' with the credentials of a user with DBA privileges.
-- Replace '<backup_filename>' with the desired name for the backup file.
-- The file will be created in the specified backup directory.
-- For example, 'full_backup_2023.dmp'.
BEGIN
  DBMS_DATAPUMP.CREATE_DUMP_FILE(
    file_name   => '&backup_directory./<backup_filename>',
    directory   => 'BACKUP_DIR',
    file_type   => 1
  );
  
  DBMS_DATAPUMP.ADD_FILE(
    handle      => 'backup_handle',
    file_name   => '&backup_directory./<backup_filename>',
    directory   => 'BACKUP_DIR',
    file_type   => 1
  );

  DBMS_DATAPUMP.CREATE(
    operation   => 'EXPORT',
    job_mode    => 'FULL',
    job_name    => 'full_backup_job',
    version     => 'COMPATIBLE',
    handle      => 'backup_handle'
  );

  DBMS_DATAPUMP.START_JOB('full_backup_job');
  DBMS_DATAPUMP.WAIT_FOR_JOB('full_backup_job');
  DBMS_DATAPUMP.DETACH('full_backup_job');
END;
/
