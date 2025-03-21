CREATE SCHEMA waste1;
USE waste1;


-- 1. Creating the Citizen table
CREATE TABLE Citizen_details(
    Citizen_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Contact_Number VARCHAR(15) NOT NULL,
    Email_id VARCHAR(100) 
);

-- Inserting data into Citizen table
INSERT INTO Citizen_details (Citizen_ID, Name, Address, Contact_Number, Email_id) 
VALUES
(1, 'John Doe', '123, Anna Nagar, Chennai', '8956438866', 'john@example.com'),
(2, 'Jane Smith', '45, T Nagar, Chennai', '9944619117', 'jane@example.com'),
(3, 'Alice Johnson', '78, Besant Nagar, Chennai', '6374821514', 'alice@example.com'),
(4, 'Bob White', '12, Kilpauk, Chennai', '7361277969', 'bob@example.com'),
(5, 'Charlie Brown', '34, Royapettah, Chennai', '9977654326', 'charlie@example.com'),
(6, 'David Clark', '56, Adyar, Chennai', '7398764533', 'david@example.com'),
(7, 'Emma Lewis', '89, Egmore, Chennai', '6343288782', 'emma@example.com'),
(8, 'Frank Walker', '22, Mount Road, Chennai', '9865864555', 'frank@example.com'),
(9, 'Grace Lee', '67, Mylapore, Chennai', '736124433', 'grace@example.com'),
(10, 'Henry Moore', '101, OMR, Chennai', '9865734488', 'henry@example.com'),
(11, 'Isabella Davis', '234, Velachery, Chennai', '8097654532', 'isabella@example.com'),
(12, 'Jack Black', '55, Purasaiwakkam, Chennai', '9765342189', 'jack@example.com'),
(13, 'Karen Taylor', '123, Perungudi, Chennai', '8965432176', 'karen@example.com'),
(14, 'Leo Harris', '43, Saidapet, Chennai', '980734564', 'leo@example.com'),
(15, 'Monica King', '11, Guindy, Chennai', '9867543515', 'monica@example.com'),
(16, 'Nathan Scott', '99, Sholinganallur, Chennai', '5687431616', 'nathan@example.com'),
(17, 'Olivia Green', '12, Triplicane, Chennai', '7865431717', 'olivia@example.com'),
(18, 'Paul Turner', '40, Thiruvanmiyur, Chennai', '9865471818', 'paul@example.com'),
(19, 'Quentin Adams', '56, Nungambakkam, Chennai', '9815221919', 'quentin@example.com'),
(20, 'Rachel Wilson', '72, Alwarpet, Chennai', '7854362020', 'rachel@example.com');


-- 2. Creating the Waste_dustbin table
CREATE TABLE Waste_dustbin(
    Bin_ID INT PRIMARY KEY,
    Location VARCHAR(100) NOT NULL,
    Capacity INT ,
    Fill_Level INT NOT NULL,
    Bin_Type VARCHAR(50) NOT NULL
);

-- Inserting data into Waste_dustbin table
INSERT INTO Waste_dustbin(Bin_ID, Location, Capacity, Fill_Level, Bin_Type) 
VALUES
(101, '12.9716N, 77.5946E', 100, 50, 'Organic'),
(201, '12.9816N, 77.6046E', 150, 30, 'Plastic'),
(301, '12.9916N, 77.6146E', 120, 80, 'Metal'),
(401, '13.0016N, 77.6246E', 100, 60, 'General'),
(501, '13.0116N, 77.6346E', 200, 90, 'Electronic'),
(601, '13.0216N, 77.6446E', 100, 40, 'Organic'),
(701, '13.0316N, 77.6546E', 150, 70, 'Plastic'),
(801, '13.0416N, 77.6646E', 120, 50, 'Metal'),
(901, '13.0516N, 77.6746E', 100, 20, 'General'),
(100, '13.0616N, 77.6846E', 200, 60, 'Electronic'),
(110, '13.0716N, 77.6946E', 80, 50, 'Plastic'),
(120, '13.0816N, 77.7046E', 150, 40, 'Metal'),
(130, '13.0916N, 77.7146E', 100, 90, 'General'),
(140, '13.1016N, 77.7246E', 120, 60, 'Electronic'),
(150, '13.1116N, 77.7346E', 100, 75, 'Organic'),
(160, '13.1216N, 77.7446E', 200, 80, 'Plastic'),
(170, '13.1316N, 77.7546E', 150, 65, 'Metal'),
(180, '13.1416N, 77.7646E', 80, 90, 'General'),
(190, '13.1516N, 77.7746E', 120, 40, 'Electronic'),
(200, '13.1616N, 77.7846E', 100, 50, 'Organic');

-- 3. Creating the Truck table
CREATE TABLE Truck (
    Truck_ID INT PRIMARY KEY,
    Driver_Name VARCHAR(100) NOT NULL,
    Capacity INT NOT NULL,
    Assigned_Area VARCHAR(100) NOT NULL
);

-- Inserting data into Truck table
INSERT INTO Truck (Truck_ID, Driver_Name, Capacity, Assigned_Area) 
VALUES
(11, 'Dave ', 500, 'Area A'),
(20, ' Adams', 600, 'Area B'),
(30, 'Frank', 450, 'Area C'),
(40, 'Grace', 550, 'Area D'),
(50, 'deepak', 700, 'Area E'),
(60, 'deena', 600, 'Area F'),
(70, 'kavi', 500, 'Area G'),
(80, 'Karan', 650, 'Area H'),
(90, 'deepan', 750, 'Area I'),
(100, 'santhosh', 450, 'Area J');

-- 4. Creating the Collection_Schedule table
CREATE TABLE Collection_Schedule (
    Schedule_ID INT PRIMARY KEY,
    Bin_ID INT NOT NULL,
    Truck_ID INT NOT NULL,
    Collection_Date DATE NOT NULL,
    Collected_Weight INT NOT NULL,
    FOREIGN KEY (Bin_ID) REFERENCES Waste_dustbin(Bin_ID) ON DELETE CASCADE,
    FOREIGN KEY (Truck_ID) REFERENCES Truck(Truck_ID) ON DELETE CASCADE
);

-- Inserting data into Collection_Schedule table
INSERT INTO Collection_Schedule (Schedule_ID, Bin_ID, Truck_ID, Collection_Date, Collected_Weight) 
VALUES
(1, 101, 10, '2025-03-19', 50),
(2, 201, 20, '2025-03-19', 45),
(3, 301, 30, '2025-03-19', 60),
(4, 401, 40, '2025-03-19', 40),
(5, 501, 50, '2025-03-19', 70),
(6, 601, 60, '2025-03-19', 30),
(7, 701, 70, '2025-03-19', 50),
(8, 801, 80, '2025-03-19', 55),
(9, 901, 90, '2025-03-19', 40),
(10, 100, 100, '2025-03-19', 65);

-- 5. Creating the Recycling_Center table
CREATE TABLE Recycling_Center (
    Center_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(200) NOT NULL,
    Contact_Number VARCHAR(15) NOT NULL,
	Bin_ID INT NOT NULL,
	FOREIGN KEY (Bin_ID) REFERENCES Waste_dustbin(Bin_ID) ON DELETE CASCADE
);

-- Inserting data into Recycling_Center table
INSERT INTO Recycling_Center (Center_ID,Bin_ID, Name, Location, Contact_Number) 
VALUES
(1, 101,'Recycling  A', 'North City', '9865864555'),
(2, 201,'Recycling  B', 'South City', '7361277959'),
(3, 501,'Recycling  C', 'East City', '9944619117'),
(4, 901,'Recycling   d', 'West City',  '6374921514'),
(5, 100, 'Recycling  e', 'Center City','9865743425');

-- 6. Creating the Waste_Disposal table
CREATE TABLE Waste_Disposal (
    Disposal_ID INT PRIMARY KEY,
    Bin_ID INT NOT NULL,
    Center_ID INT NOT NULL,
    Disposal_Date DATE NOT NULL,
    Processed_Weight INT NOT NULL,
    Recycling_Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (Bin_ID) REFERENCES Waste_dustbin(Bin_ID) ON DELETE CASCADE,
    FOREIGN KEY (Center_ID) REFERENCES Recycling_Center(Center_ID) ON DELETE CASCADE
);

-- Inserting data into Waste_Disposal table
INSERT INTO Waste_Disposal (Disposal_ID, Bin_ID, Center_ID, Disposal_Date, Processed_Weight, Recycling_Status)
 VALUES
(1, 101, 1, '2025-03-19', 45, 'Recycled'),
(2, 201, 2, '2025-03-19', 40, 'Recycled'),
(3, 301, 3, '2025-03-19', 55, 'Landfilled'),
(4, 401, 1, '2025-03-19', 35, 'Recycled'),
(5, 501, 4, '2025-03-19', 65, 'Landfilled'),
(6, 601, 3, '2025-03-19', 30, 'Recycled'),
(7, 701, 1, '2025-03-19', 50, 'Recycled'),
(8, 801, 5, '2025-03-19', 55, 'Landfilled'),
(9, 901, 4, '2025-03-19', 40, 'Recycled'),
(10, 100, 1, '2025-03-19', 60, 'Landfilled');


-- 7. Creating the Smart_Sensors table
CREATE TABLE Smart_Sensors (
    Sensor_ID INT PRIMARY KEY,
    Bin_ID INT NOT NULL,
    Fill_Level INT NOT NULL,
    Last_Updated_Time TIMESTAMP NOT NULL,
    FOREIGN KEY (Bin_ID) REFERENCES Waste_dustbin(Bin_ID) ON DELETE CASCADE
);


-- Inserting data into Smart_Sensors table
INSERT INTO Smart_Sensors (Sensor_ID, Bin_ID, Fill_Level, Last_Updated_Time) VALUES
(1, 101, 50, '2025-03-19 08:00:00'),
(2, 201, 30, '2025-03-19 08:15:00'),
(3, 301, 80, '2025-03-19 08:30:00'),
(4, 401, 60, '2025-03-19 08:45:00'),
(5, 501, 90, '2025-03-19 09:00:00'),
(6, 601, 40, '2025-03-19 09:15:00'),
(7, 701, 70, '2025-03-19 09:30:00'),
(8, 801, 50, '2025-03-19 09:45:00'),
(9, 901, 20, '2025-03-19 10:00:00'),
(10, 100, 60, '2025-03-19 10:15:00');


-- 8. Creating the Complaint table
CREATE TABLE Complaint (
    Complaint_ID INT PRIMARY KEY,
    Citizen_ID INT NOT NULL,
    Bin_ID INT NOT NULL,
    Issue_Description VARCHAR(255) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (Citizen_ID) REFERENCES Citizen_details(Citizen_ID) ON DELETE CASCADE,
    FOREIGN KEY (Bin_ID) REFERENCES Waste_dustbin(Bin_ID) ON DELETE CASCADE
);

-- Inserting data into Complaint table
INSERT INTO Complaint (Complaint_ID, Citizen_ID, Bin_ID, Issue_Description, Status) VALUES
(1, 1, 101, 'Overflowing bin', 'Pending'),
(2, 2, 201, 'Not collecting on time', 'Resolved'),
(3, 3, 301, 'Bin broken', 'Pending'),
(4, 4, 401, 'Bin not being emptied', 'Resolved'),
(5, 5, 501, 'Faulty sensor', 'Pending'),
(6, 6, 601, 'Bin overflowing', 'Resolved'),
(7, 7, 701, 'Incorrect bin placement', 'Pending'),
(8, 8, 801, 'Trash spilling out', 'Resolved'),
(9, 9, 901, 'Garbage truck not showing up', 'Pending'),
(10, 10, 100, 'Smell issue', 'Resolved');


-- QUERY

-- List all citizens
SELECT Name, Citizen_ID,Name, Address, Contact_Number 
FROM Citizen_details;

--   fill level above 60%
SELECT Bin_ID, Location, Fill_Level
 FROM Waste_dustbin
 WHERE Fill_Level > 60;

-- trucks and  assigned areas
SELECT Truck_ID, Driver_Name, Assigned_Area 
FROM Truck;

--   collection schedules 
SELECT * FROM Collection_Schedule
 WHERE Collection_Date = '2025-03-19';

-- status is 'Pending'
SELECT * FROM Complaint 
WHERE Status = 'Pending';


-- total weight of waste collected by each truck
SELECT Truck_ID, SUM(Collected_Weight) AS Total_Weight
FROM Collection_Schedule
WHERE Collection_Date = '2025-03-19'
GROUP BY Truck_ID;

-- fill level
SELECT Bin_ID, Location, Fill_Level
 FROM Waste_dustbin 
 WHERE Bin_Type = 'Organic';


--  complaints are Resolved
SELECT COUNT(*) AS Resolved_Complaints 
FROM Complaint 
WHERE Status = 'Resolved';


-- Fill_Level 
SELECT c.Complaint_ID, c.Issue_Description, c.Status
FROM Complaint c
JOIN Waste_dustbin w ON c.Bin_ID = w.Bin_ID
WHERE w.Fill_Level > 80;

--  complaints are still 'Pending'
SELECT c.Name, c.Address, com.Issue_Description, com.Status
FROM Citizen_details c
JOIN Complaint com ON c.Citizen_ID = com.Citizen_ID
WHERE com.Status = 'Pending';

-- Unresolved Complaints with Bin Details

SELECT CMP.Complaint_ID, C.Name, WB.Location, CMP.Issue_Description
FROM Complaint CMP
JOIN Citizen_details C ON CMP.Citizen_ID = C.Citizen_ID
JOIN Waste_dustbin WB ON CMP.Bin_ID = WB.Bin_ID
WHERE CMP.Status = 'Pending';

-- stored procedure 
-- List all citizens
DELIMITER $$
CREATE PROCEDURE GetCitizenDetails()
BEGIN
    SELECT Name, Citizen_ID, Address, Contact_Number
    FROM Citizen_details;
END $$
DELIMITER ;

call GetCitizenDetails();

-- FILL LEVEL 
DELIMITER $$
CREATE PROCEDURE FILL_LEVEL()
BEGIN
 SELECT Bin_ID, Location, Fill_Level
 FROM Waste_dustbin
 WHERE Fill_Level > 60;
END $$
DELIMITER ;

CALL FILL_LEVEL();

-- trucks and  assigned areas
DELIMITER $$
CREATE PROCEDURE ASSIGNED_AREAS()
BEGIN
SELECT Truck_ID, Driver_Name, Assigned_Area 
FROM Truck;
END $$
DELIMITER ;

CALL ASSIGNED_AREAS()

--   collection schedules 
DELIMITER $$
CREATE PROCEDURE COLLECTION()
BEGIN
SELECT * FROM Collection_Schedule
 WHERE Collection_Date = '2025-03-19';
END $$
DELIMITER ;

CALL  COLLECTION();

-- status is 'Pending'
DELIMITER $$
CREATE PROCEDURE PENDING_STATUS()
BEGIN
SELECT * FROM Complaint 
WHERE Status = 'Pending';
END $$
DELIMITER ;

CALL  PENDING_STATUS();

-- total weight of waste collected by each truck
DELIMITER $$
CREATE PROCEDURE TOTAL_WEIGHT_EACH_TRUCK()
BEGIN
SELECT Truck_ID, SUM(Collected_Weight) AS Total_Weight
FROM Collection_Schedule
WHERE Collection_Date = '2025-03-19'
GROUP BY Truck_ID;
END $$
DELIMITER ;

CALL  TOTAL_WEIGHT_EACH_TRUCK();

-- fill level
DELIMITER $$
CREATE PROCEDURE ORGANIC_FILL()
BEGIN
SELECT Bin_ID, Location, Fill_Level
 FROM Waste_dustbin 
 WHERE Bin_Type = 'Organic';
 END $$
DELIMITER ;

CALL ORGANIC_FILL();

--  complaints are Resolved
DELIMITER $$
CREATE PROCEDURE COMPLAINTS_RESOLVED()
BEGIN
SELECT COUNT(*) AS Resolved_Complaints 
FROM Complaint 
WHERE Status = 'Resolved';
END $$
DELIMITER ;

CALL COMPLAINTS_RESOLVED();

-- Fill_Level 
DELIMITER $$
CREATE PROCEDURE LEVEL()
BEGIN
SELECT c.Complaint_ID, c.Issue_Description, c.Status
FROM Complaint c
JOIN Waste_dustbin w ON c.Bin_ID = w.Bin_ID
WHERE w.Fill_Level > 80;
END $$
DELIMITER ;

CALL LEVEL ();

--  complaints are still 'Pending'
DELIMITER $$
CREATE PROCEDURE PENDING()
BEGIN
SELECT c.Name, c.Address, com.Issue_Description, com.Status
FROM Citizen_details c
JOIN Complaint com ON c.Citizen_ID = com.Citizen_ID
WHERE com.Status = 'Pending';
END $$
DELIMITER ;

CALL PENDING();

-- Unresolved Complaints with Bin Details
DELIMITER $$
CREATE PROCEDURE COMPLAINTS()
BEGIN
SELECT CMP.Complaint_ID, C.Name, WB.Location, CMP.Issue_Description
FROM Complaint CMP
JOIN Citizen_details C ON CMP.Citizen_ID = C.Citizen_ID
JOIN Waste_dustbin WB ON CMP.Bin_ID = WB.Bin_ID
WHERE CMP.Status = 'Pending';
END $$
DELIMITER ;

CALL COMPLAINTS();



























































































































