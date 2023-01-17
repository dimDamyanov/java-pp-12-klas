create database m_data;

create table doctors (
  doctorUIN VARCHAR(10) NOT NULL
  doctorTitle VARCHAR(20),
  doctorFirstName VARCHAR(50) NOT NULL,
  doctorMiddleName VARCHAR(50) NOT NULL,
  doctorLastName VARCHAR(50) NOT NULL,
  doctorSpecialty INT(2),
  doctorMedicalDepartment INT(3),
  primary key(doctorUIN),
  CONSTRAINT FK_DoctorSpecialty FOREIGN KEY (doctorSpecialty) REFERENCES specialties(specialtyID),
  CONSTRAINT FK_DoctorDepartment FOREIGN KEY (doctorMedicalDepartment) REFERENCES medicalDepartments(departmentId),
);

create table specialties (
  specialtyId INT AUTO_INCREMENT,
  specialyName VARCHAR(100) NOT NULL,
  primary key(specialtyId)
);

create table medicalDepartments (
  departmentId INT AUTO_INCREMENT,
  departmentName VARCHAR(100) NOT NULL,
  departmentLeader VARCHAR(10) NOT NULL,
  primary key(departmentId),
  CONSTRAINT FK_DepartmentLeader FOREIGN KEY (departmentLeader) REFERENCES doctors(doctorUIN)
); 
