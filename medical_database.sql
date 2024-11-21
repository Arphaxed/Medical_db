-- Create the Database
CREATE DATABASE IF NOT EXISTS HospitalDB;
USE HospitalDB;

-- Create Department Table
CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Create Doctor Table
CREATE TABLE IF NOT EXISTS Doctor (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100),
    DepartmentID INT NOT NULL,
    ContactPhone VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Create Patient Table
CREATE TABLE IF NOT EXISTS Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactPhone VARCHAR(15)
);

-- Create Appointment Table
CREATE TABLE IF NOT EXISTS Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    ReasonForVisit VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

-- Create MedicalRecord Table
CREATE TABLE IF NOT EXISTS MedicalRecord (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255),
    DateOfVisit DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

-- Create Prescription Table
CREATE TABLE IF NOT EXISTS Prescription (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Medication VARCHAR(255) NOT NULL,
    Dosage VARCHAR(50),
    DateIssued DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

-- Create HospitalStaff Table
CREATE TABLE IF NOT EXISTS HospitalStaff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    DepartmentID INT NOT NULL,
    ContactPhone VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);