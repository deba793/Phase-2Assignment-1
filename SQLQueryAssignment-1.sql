CREATE DATABASE OurExerciseDb ON PRIMARY
(
    NAME = 'OurExerciseDb',
    FILENAME = 'E:\Phase-2\Day-1\OurExerciseDb.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON
(
    NAME = 'OurExerciseDb_log',
    FILENAME = 'E:\Phase-2\Day-1\OurExerciseDb.ldf'
);

USE OurExerciseDb

-- Create the StudentRegistrations table
CREATE TABLE StudentRegistrations (
    Studentid INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    CONSTRAINT PK_StudentRegistrations PRIMARY KEY (Studentid, CourseCode)
)
insert into StudentRegistrations values (11,'AB201','08/08/2023')
insert into StudentRegistrations(StudentId,CourseCode) values (11,'AB202')
insert into StudentRegistrations values (12,'AB201','02/08/2023')
insert into StudentRegistrations values (13,'AB201','05/08/2023')
insert into StudentRegistrations(StudentId,CourseCode) values (12,'AB203')