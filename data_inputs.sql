-- Insert Departments
INSERT INTO Department (DepartmentName) VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');
INSERT INTO Doctor (FirstName, LastName, Specialization, DepartmentID, ContactPhone)
VALUES
('John', 'Doe', 'Cardiologist', 1, '555-1234'),
('Jane', 'Smith', 'Neurologist', 2, '555-5678');

-- Insert Patients
INSERT INTO Patient (FirstName, LastName, DateOfBirth, Gender, ContactPhone)
VALUES
('Alice', 'Williams', '1985-06-15', 'Female', '555-8765'),
('Bob', 'Johnson', '1990-08-22', 'Male', '555-4321');

INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, ReasonForVisit)
VALUES
(1, 1, '2024-03-15 10:00:00', 'Routine Checkup'),
(2, 2, '2024-03-16 14:00:00', 'Headache');

INSERT INTO MedicalRecord (PatientID, Diagnosis, Treatment, DateOfVisit)
VALUES
(1, 'Healthy', 'No treatment needed', '2024-03-15'),
(2, 'Migraine', 'Pain relievers prescribed', '2024-03-16');

-- Insert Prescriptions
INSERT INTO Prescription (PatientID, DoctorID, Medication, Dosage, DateIssued)
VALUES
(2, 2, 'Ibuprofen', '200mg', '2024-03-16');

-- Insert Hospital Staff
INSERT INTO HospitalStaff (FirstName, LastName, Role, DepartmentID, ContactPhone)
VALUES
('Emily', 'Davis', 'Nurse', 1, '555-9101');

SHOW TABLES;

SELECT * FROM Patient;






