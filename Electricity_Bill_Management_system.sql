CREATE DATABASE electricity_bill_management;
USE electricity_bill_management

CREATE TABLE areas (
area_id INT PRIMARY KEY,
area_name VARCHAR(50)
);
INSERT INTO areas VALUES
(1,'Anna Nagar'),
(2,'T Nagar'),
(3,'Velachery'),
(4,'Tambaram'),
(5,'Adyar'),
(6,'Porur'),
(7,'Guindy'),
(8,'Chrompet'),
(9,'Avadi'),
(10,'Mylapore'),
(11,'Perambur'),
(12,'Ambattur'),
(13,'Kodambakkam'),
(14,'Sholinganallur'),
(15,'Pallavaram'),
(16,'Thoraipakkam'),
(17,'Vadapalani'),
(18,'Nungambakkam'),
(19,'Royapettah'),
(20,'ECR'),
(21,'OMR'),
(22,'Poonamallee'),
(23,'Medavakkam'),
(24,'Kolathur'),
(25,'Saidapet'),
(26, 'Madhavaram'),
(27, 'Manali'),
(28, 'Thiruvottiyur'),
(29, 'Tondiarpet'),
(30, 'Washermanpet'),
(31, 'Purasawalkam'),
(32, 'Egmore'),
(33, 'Kilpauk'),
(34, 'Chetpet'),
(35, 'Pattabiram'),
(36, 'Nerkundram'),
(37, 'Virugambakkam'),
(38, 'Ashok Nagar'),
(39, 'KK Nagar'),
(40, 'Arumbakkam'),
(41, 'Villivakkam'),
(42, 'Perungudi'),
(43, 'Sholavaram'),
(44, 'Selaiyur'),
(45, 'Nanganallur'),
(46, 'Pammal'),
(47, 'Mudichur'),
(48, 'Urapakkam'),
(49, 'Perungalathur'),
(50, 'Injambakkam');

CREATE TABLE consumers (
consumer_id INT PRIMARY KEY,
consumer_name VARCHAR(100),
phone VARCHAR(15),
email VARCHAR(100)
);
INSERT INTO consumers VALUES
(1,'Arun Kumar','9876500001','arun1@gmail.com'),
(2,'Priya Sharma','9876500002','priya2@gmail.com'),
(3,'Rahul Das','9876500003','rahul3@gmail.com'),
(4,'Sneha Iyer','9876500004','sneha4@gmail.com'),
(5,'Vikram Raj','9876500005','vikram5@gmail.com'),
(6,'Karthik S','9876500006','karthik6@gmail.com'),
(7,'Meena R','9876500007','meena7@gmail.com'),
(8,'Dinesh P','9876500008','dinesh8@gmail.com'),
(9,'Anitha V','9876500009','anitha9@gmail.com'),
(10,'Suresh B','9876500010','suresh10@gmail.com'),
(11,'Ajay Kumar','9876500011','ajay11@gmail.com'),
(12,'Lavanya S','9876500012','lavanya12@gmail.com'),
(13,'Naveen K','9876500013','naveen13@gmail.com'),
(14,'Harini M','9876500014','harini14@gmail.com'),
(15,'Ramesh T','9876500015','ramesh15@gmail.com'),
(16,'Divya P','9876500016','divya16@gmail.com'),
(17,'Kiran A','9876500017','kiran17@gmail.com'),
(18,'Pooja N','9876500018','pooja18@gmail.com'),
(19,'Mohan R','9876500019','mohan19@gmail.com'),
(20,'Keerthi V','9876500020','keerthi20@gmail.com'),
(21,'Sathish K','9876500021','sathish21@gmail.com'),
(22,'Nithya R','9876500022','nithya22@gmail.com'),
(23,'Ganesh P','9876500023','ganesh23@gmail.com'),
(24,'Deepa S','9876500024','deepa24@gmail.com'),
(25,'Praveen M','9876500025','praveen25@gmail.com'),
(26,'Kavitha R','9876500026','kavitha26@gmail.com'),
(27,'Balamurugan S','9876500027','balamurugan27@gmail.com'),
(28,'Indira P','9876500028','indira28@gmail.com'),
(29,'Manoj T','9876500029','manoj29@gmail.com'),
(30,'Saranya K','9876500030','saranya30@gmail.com'),
(31,'Vijay N','9876500031','vijay31@gmail.com'),
(32,'Renuka A','9876500032','renuka32@gmail.com'),
(33,'Prakash M','9876500033','prakash33@gmail.com'),
(34,'Sudha V','9876500034','sudha34@gmail.com'),
(35,'Arjun B','9876500035','arjun35@gmail.com'),
(36,'Mythili S','9876500036','mythili36@gmail.com'),
(37,'Senthil K','9876500037','senthil37@gmail.com'),
(38,'Bhavani R','9876500038','bhavani38@gmail.com'),
(39,'Logesh P','9876500039','logesh39@gmail.com'),
(40,'Annapoorni M','9876500040','annapoorni40@gmail.com'),
(41,'Durai S','9876500041','durai41@gmail.com'),
(42,'Varsha N','9876500042','varsha42@gmail.com'),
(43,'Murugan T','9876500043','murugan43@gmail.com'),
(44,'Chithra K','9876500044','chithra44@gmail.com'),
(45,'Selvam R','9876500045','selvam45@gmail.com'),
(46,'Padmavathi S','9876500046','padmavathi46@gmail.com'),
(47,'Thirumaran V','9876500047','thirumaran47@gmail.com'),
(48,'Eswari P','9876500048','eswari48@gmail.com'),
(49,'Barath K','9876500049','barath49@gmail.com'),
(50,'Geetha M','9876500050','geetha50@gmail.com');

CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    consumer_id INT,
    city VARCHAR(50),
    state VARCHAR(50),
    pincode INT,
    FOREIGN KEY (consumer_id)
    REFERENCES consumers(consumer_id)
);
INSERT INTO addresses VALUES
(1,1,'Chennai','Tamil Nadu',600040),
(2,2,'Chennai','Tamil Nadu',600017),
(3,3,'Chennai','Tamil Nadu',600042),
(4,4,'Chennai','Tamil Nadu',600045),
(5,5,'Chennai','Tamil Nadu',600020),
(6,6,'Chennai','Tamil Nadu',600116),
(7,7,'Chennai','Tamil Nadu',600032),
(8,8,'Chennai','Tamil Nadu',600044),
(9,9,'Chennai','Tamil Nadu',600071),
(10,10,'Chennai','Tamil Nadu',600004),
(11,11,'Chennai','Tamil Nadu',600040),
(12,12,'Chennai','Tamil Nadu',600017),
(13,13,'Chennai','Tamil Nadu',600042),
(14,14,'Chennai','Tamil Nadu',600045),
(15,15,'Chennai','Tamil Nadu',600020),
(16,16,'Chennai','Tamil Nadu',600116),
(17,17,'Chennai','Tamil Nadu',600032),
(18,18,'Chennai','Tamil Nadu',600034),
(19,19,'Chennai','Tamil Nadu',600014),
(20,20,'Chennai','Tamil Nadu',600129),
(21,21,'Chennai','Tamil Nadu',600119),
(22,22,'Chennai','Tamil Nadu',600056),
(23,23,'Chennai','Tamil Nadu',600100),
(24,24,'Chennai','Tamil Nadu',600099),
(25,25,'Chennai','Tamil Nadu',600015),
(26,26,'Chennai','Tamil Nadu',600060),
(27,27,'Chennai','Tamil Nadu',600068),
(28,28,'Chennai','Tamil Nadu',600019),
(29,29,'Chennai','Tamil Nadu',600081),
(30,30,'Chennai','Tamil Nadu',600021),
(31,31,'Chennai','Tamil Nadu',600031),
(32,32,'Chennai','Tamil Nadu',600008),
(33,33,'Chennai','Tamil Nadu',600010),
(34,34,'Chennai','Tamil Nadu',600031),
(35,35,'Chennai','Tamil Nadu',600072),
(36,36,'Chennai','Tamil Nadu',600107),
(37,37,'Chennai','Tamil Nadu',600092),
(38,38,'Chennai','Tamil Nadu',600083),
(39,39,'Chennai','Tamil Nadu',600061),
(40,40,'Chennai','Tamil Nadu',600073),
(41,41,'Chennai','Tamil Nadu',600082),
(42,42,'Chennai','Tamil Nadu',600096),
(43,43,'Chennai','Tamil Nadu',600067),
(44,44,'Chennai','Tamil Nadu',600074),
(45,45,'Chennai','Tamil Nadu',600061),
(46,46,'Chennai','Tamil Nadu',600075),
(47,47,'Chennai','Tamil Nadu',600058),
(48,48,'Chennai','Tamil Nadu',603210),
(49,49,'Chennai','Tamil Nadu',600063),
(50,50,'Chennai','Tamil Nadu',600115);

CREATE TABLE connections (
    connection_id INT PRIMARY KEY,
    consumer_id INT,
    connection_type VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (consumer_id)
    REFERENCES consumers(consumer_id)
);
INSERT INTO connections VALUES
(1,1,'Domestic','Active'),
(2,2,'Commercial','Active'),
(3,3,'Domestic','Active'),
(4,4,'Industrial','Active'),
(5,5,'Domestic','Active'),
(6,6,'Commercial','Active'),
(7,7,'Domestic','Inactive'),
(8,8,'Domestic','Active'),
(9,9,'Agricultural','Active'),
(10,10,'Domestic','Active'),
(11,11,'Commercial','Active'),
(12,12,'Domestic','Active'),
(13,13,'Industrial','Active'),
(14,14,'Domestic','Active'),
(15,15,'Domestic','Inactive'),
(16,16,'Commercial','Active'),
(17,17,'Domestic','Active'),
(18,18,'Domestic','Active'),
(19,19,'Commercial','Active'),
(20,20,'Domestic','Active'),
(21,21,'Industrial','Active'),
(22,22,'Domestic','Active'),
(23,23,'Domestic','Active'),
(24,24,'Commercial','Active'),
(25,25,'Domestic','Active'),
(26,26,'Domestic','Active'),
(27,27,'Commercial','Inactive'),
(28,28,'Domestic','Active'),
(29,29,'Domestic','Active'),
(30,30,'Industrial','Active'),
(31,31,'Domestic','Active'),
(32,32,'Commercial','Active'),
(33,33,'Domestic','Active'),
(34,34,'Domestic','Active'),
(35,35,'Agricultural','Active'),
(36,36,'Domestic','Active'),
(37,37,'Commercial','Active'),
(38,38,'Domestic','Active'),
(39,39,'Domestic','Active'),
(40,40,'Industrial','Active'),
(41,41,'Domestic','Active'),
(42,42,'Domestic','Active'),
(43,43,'Commercial','Active'),
(44,44,'Domestic','Active'),
(45,45,'Domestic','Inactive'),
(46,46,'Domestic','Active'),
(47,47,'Commercial','Active'),
(48,48,'Domestic','Active'),
(49,49,'Domestic','Active'),
(50,50,'Industrial','Active');

CREATE TABLE meters (
    meter_id INT PRIMARY KEY,
    connection_id INT,
    meter_type VARCHAR(50),
    install_date DATE,
    FOREIGN KEY (connection_id)
    REFERENCES connections(connection_id)
);
INSERT INTO meters VALUES
(1,1,'Smart','2020-01-15'),
(2,2,'Analog','2019-06-20'),
(3,3,'Smart','2021-03-10'),
(4,4,'Digital','2018-07-25'),
(5,5,'Smart','2020-11-05'),
(6,6,'Analog','2017-09-18'),
(7,7,'Digital','2021-01-22'),
(8,8,'Smart','2019-04-30'),
(9,9,'Analog','2018-12-15'),
(10,10,'Smart','2022-02-08'),
(11,11,'Digital','2020-06-14'),
(12,12,'Smart','2021-08-19'),
(13,13,'Analog','2019-03-27'),
(14,14,'Digital','2022-05-11'),
(15,15,'Smart','2018-10-03'),
(16,16,'Analog','2020-07-29'),
(17,17,'Smart','2021-11-16'),
(18,18,'Digital','2019-01-07'),
(19,19,'Smart','2022-04-23'),
(20,20,'Analog','2018-08-31'),
(21,21,'Digital','2021-06-09'),
(22,22,'Smart','2020-03-17'),
(23,23,'Analog','2019-09-04'),
(24,24,'Smart','2022-01-28'),
(25,25,'Digital','2018-05-13'),
(26,26,'Smart','2020-10-21'),
(27,27,'Analog','2017-12-06'),
(28,28,'Digital','2021-04-15'),
(29,29,'Smart','2019-07-02'),
(30,30,'Analog','2022-03-19'),
(31,31,'Smart','2018-11-24'),
(32,32,'Digital','2020-08-07'),
(33,33,'Smart','2021-02-13'),
(34,34,'Analog','2019-05-26'),
(35,35,'Digital','2022-06-30'),
(36,36,'Smart','2018-04-08'),
(37,37,'Analog','2020-09-22'),
(38,38,'Smart','2021-07-11'),
(39,39,'Digital','2019-02-18'),
(40,40,'Smart','2022-08-05'),
(41,41,'Analog','2018-06-27'),
(42,42,'Digital','2020-12-14'),
(43,43,'Smart','2021-09-28'),
(44,44,'Analog','2019-11-09'),
(45,45,'Digital','2017-03-16'),
(46,46,'Smart','2022-07-03'),
(47,47,'Analog','2020-04-25'),
(48,48,'Smart','2021-12-20'),
(49,49,'Digital','2019-08-13'),
(50,50,'Smart','2022-09-17');

CREATE TABLE meter_readings (
    reading_id INT PRIMARY KEY,
    meter_id INT,
    reading_date DATE,
    units_consumed INT,
    FOREIGN KEY (meter_id)
    REFERENCES meters(meter_id)
);
INSERT INTO meter_readings VALUES
(1,1,'2024-01-31',210),
(2,2,'2024-01-31',540),
(3,3,'2024-01-31',185),
(4,4,'2024-01-31',1200),
(5,5,'2024-01-31',230),
(6,6,'2024-01-31',670),
(7,7,'2024-01-31',150),
(8,8,'2024-01-31',310),
(9,9,'2024-01-31',480),
(10,10,'2024-01-31',275),
(11,11,'2024-01-31',590),
(12,12,'2024-01-31',200),
(13,13,'2024-01-31',1450),
(14,14,'2024-01-31',190),
(15,15,'2024-01-31',160),
(16,16,'2024-01-31',720),
(17,17,'2024-01-31',245),
(18,18,'2024-01-31',300),
(19,19,'2024-01-31',610),
(20,20,'2024-01-31',220),
(21,21,'2024-01-31',1380),
(22,22,'2024-01-31',195),
(23,23,'2024-01-31',260),
(24,24,'2024-01-31',530),
(25,25,'2024-01-31',215),
(26,26,'2024-02-29',225),
(27,27,'2024-02-29',490),
(28,28,'2024-02-29',175),
(29,29,'2024-02-29',285),
(30,30,'2024-02-29',1100),
(31,31,'2024-02-29',240),
(32,32,'2024-02-29',680),
(33,33,'2024-02-29',205),
(34,34,'2024-02-29',320),
(35,35,'2024-02-29',460),
(36,36,'2024-02-29',230),
(37,37,'2024-02-29',570),
(38,38,'2024-02-29',195),
(39,39,'2024-02-29',270),
(40,40,'2024-02-29',1250),
(41,41,'2024-02-29',210),
(42,42,'2024-02-29',300),
(43,43,'2024-02-29',640),
(44,44,'2024-02-29',185),
(45,45,'2024-02-29',155),
(46,46,'2024-02-29',235),
(47,47,'2024-02-29',510),
(48,48,'2024-02-29',290),
(49,49,'2024-02-29',220),
(50,50,'2024-02-29',1320);

CREATE TABLE bills (
    bill_id INT PRIMARY KEY,
    connection_id INT,
    bill_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (connection_id)
    REFERENCES connections(connection_id)
);
INSERT INTO bills VALUES
(1,1,'2024-02-05',735.00,'Paid'),
(2,2,'2024-02-05',3240.00,'Paid'),
(3,3,'2024-02-05',647.50,'Unpaid'),
(4,4,'2024-02-05',10200.00,'Paid'),
(5,5,'2024-02-05',805.00,'Paid'),
(6,6,'2024-02-05',4020.00,'Unpaid'),
(7,7,'2024-02-05',525.00,'Paid'),
(8,8,'2024-02-05',1085.00,'Paid'),
(9,9,'2024-02-05',720.00,'Unpaid'),
(10,10,'2024-02-05',962.50,'Paid'),
(11,11,'2024-02-05',3540.00,'Paid'),
(12,12,'2024-02-05',700.00,'Unpaid'),
(13,13,'2024-02-05',12325.00,'Paid'),
(14,14,'2024-02-05',665.00,'Paid'),
(15,15,'2024-02-05',560.00,'Unpaid'),
(16,16,'2024-02-05',4320.00,'Paid'),
(17,17,'2024-02-05',857.50,'Paid'),
(18,18,'2024-02-05',1050.00,'Unpaid'),
(19,19,'2024-02-05',3660.00,'Paid'),
(20,20,'2024-02-05',770.00,'Paid'),
(21,21,'2024-02-05',11730.00,'Unpaid'),
(22,22,'2024-02-05',682.50,'Paid'),
(23,23,'2024-02-05',910.00,'Paid'),
(24,24,'2024-02-05',3180.00,'Unpaid'),
(25,25,'2024-02-05',752.50,'Paid'),
(26,26,'2024-03-05',787.50,'Paid'),
(27,27,'2024-03-05',2940.00,'Unpaid'),
(28,28,'2024-03-05',612.50,'Paid'),
(29,29,'2024-03-05',997.50,'Paid'),
(30,30,'2024-03-05',9350.00,'Paid'),
(31,31,'2024-03-05',840.00,'Unpaid'),
(32,32,'2024-03-05',4080.00,'Paid'),
(33,33,'2024-03-05',717.50,'Paid'),
(34,34,'2024-03-05',1120.00,'Unpaid'),
(35,35,'2024-03-05',690.00,'Paid'),
(36,36,'2024-03-05',805.00,'Paid'),
(37,37,'2024-03-05',3420.00,'Unpaid'),
(38,38,'2024-03-05',682.50,'Paid'),
(39,39,'2024-03-05',945.00,'Paid'),
(40,40,'2024-03-05',10625.00,'Paid'),
(41,41,'2024-03-05',735.00,'Unpaid'),
(42,42,'2024-03-05',1050.00,'Paid'),
(43,43,'2024-03-05',3840.00,'Paid'),
(44,44,'2024-03-05',647.50,'Unpaid'),
(45,45,'2024-03-05',542.50,'Paid'),
(46,46,'2024-03-05',822.50,'Paid'),
(47,47,'2024-03-05',3060.00,'Unpaid'),
(48,48,'2024-03-05',1015.00,'Paid'),
(49,49,'2024-03-05',770.00,'Paid'),
(50,50,'2024-03-05',11220.00,'Paid');

CREATE TABLE bill_items (
    item_id INT PRIMARY KEY,
    bill_id INT,
    description VARCHAR(100),
    amount DECIMAL(10,2),
    FOREIGN KEY (bill_id)
    REFERENCES bills(bill_id)
);
INSERT INTO bill_items VALUES
(1,1,'Energy Charges',630.00),
(2,1,'Fixed Charges',105.00),
(3,2,'Energy Charges',2916.00),
(4,2,'Fixed Charges',324.00),
(5,3,'Energy Charges',555.00),
(6,3,'Fixed Charges',92.50),
(7,4,'Energy Charges',9180.00),
(8,4,'Fixed Charges',1020.00),
(9,5,'Energy Charges',700.00),
(10,5,'Fixed Charges',105.00),
(11,6,'Energy Charges',3618.00),
(12,6,'Fixed Charges',402.00),
(13,7,'Energy Charges',455.00),
(14,7,'Fixed Charges',70.00),
(15,8,'Energy Charges',945.00),
(16,8,'Fixed Charges',140.00),
(17,9,'Energy Charges',624.00),
(18,9,'Fixed Charges',96.00),
(19,10,'Energy Charges',840.00),
(20,10,'Fixed Charges',122.50),
(21,11,'Energy Charges',3186.00),
(22,11,'Fixed Charges',354.00),
(23,12,'Energy Charges',602.00),
(24,12,'Fixed Charges',98.00),
(25,13,'Energy Charges',11092.50),
(26,13,'Fixed Charges',1232.50),
(27,14,'Energy Charges',577.50),
(28,14,'Fixed Charges',87.50),
(29,15,'Energy Charges',490.00),
(30,15,'Fixed Charges',70.00),
(31,16,'Energy Charges',3888.00),
(32,16,'Fixed Charges',432.00),
(33,17,'Energy Charges',752.50),
(34,17,'Fixed Charges',105.00),
(35,18,'Energy Charges',910.00),
(36,18,'Fixed Charges',140.00),
(37,19,'Energy Charges',3294.00),
(38,19,'Fixed Charges',366.00),
(39,20,'Energy Charges',665.00),
(40,20,'Fixed Charges',105.00),
(41,21,'Energy Charges',10557.00),
(42,21,'Fixed Charges',1173.00),
(43,22,'Energy Charges',595.00),
(44,22,'Fixed Charges',87.50),
(45,23,'Energy Charges',798.00),
(46,23,'Fixed Charges',112.00),
(47,24,'Energy Charges',2862.00),
(48,24,'Fixed Charges',318.00),
(49,25,'Energy Charges',647.50),
(50,25,'Fixed Charges',105.00);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    bill_id INT,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (bill_id)
    REFERENCES bills(bill_id)
);
INSERT INTO payments VALUES
(1,1,'UPI',735.00,'2024-02-07'),
(2,2,'Net Banking',3240.00,'2024-02-08'),
(3,4,'Credit Card',10200.00,'2024-02-06'),
(4,5,'UPI',805.00,'2024-02-09'),
(5,7,'Cash',525.00,'2024-02-10'),
(6,8,'Debit Card',1085.00,'2024-02-07'),
(7,10,'UPI',962.50,'2024-02-11'),
(8,11,'Net Banking',3540.00,'2024-02-08'),
(9,13,'Credit Card',12325.00,'2024-02-07'),
(10,14,'UPI',665.00,'2024-02-12'),
(11,16,'Net Banking',4320.00,'2024-02-09'),
(12,17,'UPI',857.50,'2024-02-10'),
(13,19,'Credit Card',3660.00,'2024-02-08'),
(14,20,'UPI',770.00,'2024-02-11'),
(15,22,'Debit Card',682.50,'2024-02-13'),
(16,23,'UPI',910.00,'2024-02-09'),
(17,25,'Cash',752.50,'2024-02-14'),
(18,26,'UPI',787.50,'2024-03-07'),
(19,28,'Net Banking',612.50,'2024-03-08'),
(20,29,'UPI',997.50,'2024-03-09'),
(21,30,'Credit Card',9350.00,'2024-03-07'),
(22,32,'Net Banking',4080.00,'2024-03-10'),
(23,33,'UPI',717.50,'2024-03-08'),
(24,35,'Debit Card',690.00,'2024-03-11'),
(25,36,'UPI',805.00,'2024-03-09'),
(26,38,'Cash',682.50,'2024-03-12'),
(27,39,'UPI',945.00,'2024-03-10'),
(28,40,'Credit Card',10625.00,'2024-03-08'),
(29,42,'Net Banking',1050.00,'2024-03-11'),
(30,43,'UPI',3840.00,'2024-03-09'),
(31,45,'Cash',542.50,'2024-03-13'),
(32,46,'UPI',822.50,'2024-03-10'),
(33,48,'Debit Card',1015.00,'2024-03-11'),
(34,49,'UPI',770.00,'2024-03-12'),
(35,50,'Net Banking',11220.00,'2024-03-09');

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
designation VARCHAR(50)
);
INSERT INTO employees VALUES
(1,'Rajendran M','Meter Reader'),
(2,'Subramaniam K','Bill Inspector'),
(3,'Anbalagan R','Line Technician'),
(4,'Muthukumar S','Field Officer'),
(5,'Palanivel T','Supervisor'),
(6,'Saravanan P','Meter Reader'),
(7,'Kandasamy V','Bill Inspector'),
(8,'Thangavel A','Line Technician'),
(9,'Natarajan B','Field Officer'),
(10,'Ramasamy G','Supervisor'),
(11,'Ilayaraja S','Meter Reader'),
(12,'Periasamy K','Bill Inspector'),
(13,'Duraisamy R','Line Technician'),
(14,'Chinnasamy P','Field Officer'),
(15,'Velusamy M','Manager');


CREATE TABLE complaints (
    complaint_id INT PRIMARY KEY,
    consumer_id INT,
    complaint_type VARCHAR(100),
    FOREIGN KEY (consumer_id)
    REFERENCES consumers(consumer_id)
);
INSERT INTO complaints VALUES
(1,1,'High Bill Amount'),
(2,3,'Power Fluctuation'),
(3,5,'Meter Not Working'),
(4,7,'No Power Supply'),
(5,9,'Billing Error'),
(6,11,'High Bill Amount'),
(7,13,'Transformer Issue'),
(8,15,'Meter Tampered'),
(9,17,'Power Fluctuation'),
(10,19,'No Power Supply'),
(11,21,'High Bill Amount'),
(12,23,'Billing Error'),
(13,25,'Meter Not Working'),
(14,27,'Power Fluctuation'),
(15,29,'No Power Supply'),
(16,31,'High Bill Amount'),
(17,33,'Transformer Issue'),
(18,35,'Billing Error'),
(19,37,'Meter Tampered'),
(20,39,'Power Fluctuation'),
(21,41,'No Power Supply'),
(22,43,'High Bill Amount'),
(23,45,'Billing Error'),
(24,47,'Meter Not Working'),
(25,49,'Power Fluctuation');

CREATE TABLE complaint_status (
    status_id INT PRIMARY KEY,
    complaint_id INT,
    status VARCHAR(50),
    FOREIGN KEY (complaint_id)
    REFERENCES complaints(complaint_id)
);
INSERT INTO complaint_status VALUES
(1,1,'Resolved'),
(2,2,'In Progress'),
(3,3,'Resolved'),
(4,4,'Pending'),
(5,5,'Resolved'),
(6,6,'In Progress'),
(7,7,'Resolved'),
(8,8,'Pending'),
(9,9,'Resolved'),
(10,10,'In Progress'),
(11,11,'Resolved'),
(12,12,'Pending'),
(13,13,'Resolved'),
(14,14,'In Progress'),
(15,15,'Pending'),
(16,16,'Resolved'),
(17,17,'In Progress'),
(18,18,'Resolved'),
(19,19,'Pending'),
(20,20,'Resolved'),
(21,21,'In Progress'),
(22,22,'Resolved'),
(23,23,'Pending'),
(24,24,'Resolved'),
(25,25,'In Progress');


CREATE TABLE power_usage (
    usage_id INT PRIMARY KEY,
    connection_id INT,
    units_used INT,
    FOREIGN KEY (connection_id)
    REFERENCES connections(connection_id)
);
INSERT INTO power_usage VALUES
(1,1,210),
(2,2,540),
(3,3,185),
(4,4,1200),
(5,5,230),
(6,6,670),
(7,7,150),
(8,8,310),
(9,9,480),
(10,10,275),
(11,11,590),
(12,12,200),
(13,13,1450),
(14,14,190),
(15,15,160),
(16,16,720),
(17,17,245),
(18,18,300),
(19,19,610),
(20,20,220),
(21,21,1380),
(22,22,195),
(23,23,260),
(24,24,530),
(25,25,215),
(26,26,225),
(27,27,490),
(28,28,175),
(29,29,285),
(30,30,1100),
(31,31,240),
(32,32,680),
(33,33,205),
(34,34,320),
(35,35,460),
(36,36,230),
(37,37,570),
(38,38,195),
(39,39,270),
(40,40,1250),
(41,41,210),
(42,42,300),
(43,43,640),
(44,44,185),
(45,45,155),
(46,46,235),
(47,47,510),
(48,48,290),
(49,49,220),
(50,50,1320);

CREATE TABLE penalties (
    penalty_id INT PRIMARY KEY,
    bill_id INT,
    penalty_amount DECIMAL(10,2),
    FOREIGN KEY (bill_id)
    REFERENCES bills(bill_id)
);
INSERT INTO penalties VALUES
(1,3,50.00),
(2,6,120.00),
(3,9,75.00),
(4,12,60.00),
(5,15,45.00),
(6,18,85.00),
(7,21,350.00),
(8,24,95.00),
(9,27,80.00),
(10,31,65.00),
(11,34,90.00),
(12,37,100.00),
(13,41,55.00),
(14,44,50.00),
(15,47,110.00);

CREATE TABLE transformers (
    transformer_id INT PRIMARY KEY,
    transformer_name VARCHAR(50),
    capacity_kva INT,
    area_id INT,
    FOREIGN KEY (area_id)
    REFERENCES areas(area_id)
);
INSERT INTO transformers VALUES
(1,'TR-Anna Nagar',500,1),
(2,'TR-T Nagar',630,2),
(3,'TR-Velachery',400,3),
(4,'TR-Tambaram',500,4),
(5,'TR-Adyar',315,5),
(6,'TR-Porur',400,6),
(7,'TR-Guindy',630,7),
(8,'TR-Chrompet',315,8),
(9,'TR-Avadi',250,9),
(10,'TR-Mylapore',500,10),
(11,'TR-Perambur',400,11),
(12,'TR-Ambattur',630,12),
(13,'TR-Kodambakkam',315,13),
(14,'TR-Sholinganallur',500,14),
(15,'TR-Pallavaram',250,15),
(16,'TR-Thoraipakkam',400,16),
(17,'TR-Vadapalani',315,17),
(18,'TR-Nungambakkam',630,18),
(19,'TR-Royapettah',500,19),
(20,'TR-ECR',400,20),
(21,'TR-OMR',630,21),
(22,'TR-Poonamallee',315,22),
(23,'TR-Medavakkam',400,23),
(24,'TR-Kolathur',500,24),
(25,'TR-Saidapet',315,25);

CREATE TABLE outages (
    outage_id INT PRIMARY KEY,
    area_id INT,
    outage_date DATE,
    FOREIGN KEY (area_id)
    REFERENCES areas(area_id)
);
INSERT INTO outages VALUES
(1,1,'2024-01-05'),
(2,3,'2024-01-12'),
(3,5,'2024-01-18'),
(4,7,'2024-01-22'),
(5,9,'2024-01-28'),
(6,11,'2024-02-03'),
(7,13,'2024-02-09'),
(8,15,'2024-02-14'),
(9,17,'2024-02-19'),
(10,19,'2024-02-24'),
(11,21,'2024-03-02'),
(12,23,'2024-03-07'),
(13,25,'2024-03-12'),
(14,27,'2024-03-17'),
(15,29,'2024-03-22'),
(16,2,'2024-01-08'),
(17,4,'2024-01-15'),
(18,6,'2024-01-25'),
(19,8,'2024-02-01'),
(20,10,'2024-02-06'),
(21,12,'2024-02-11'),
(22,14,'2024-02-16'),
(23,16,'2024-02-21'),
(24,18,'2024-02-26'),
(25,20,'2024-03-04');

CREATE TABLE notifications (
    notification_id INT PRIMARY KEY,
    consumer_id INT,
    message VARCHAR(100),
    FOREIGN KEY (consumer_id)
    REFERENCES consumers(consumer_id)
);
INSERT INTO notifications VALUES
(1,1,'Your bill of Rs.735 is due on 2024-02-20'),
(2,2,'Payment of Rs.3240 received successfully'),
(3,3,'Your bill of Rs.647.50 is overdue'),
(4,4,'Payment of Rs.10200 received successfully'),
(5,5,'Your bill of Rs.805 is due on 2024-02-20'),
(6,6,'Scheduled maintenance on 2024-02-15 in your area'),
(7,7,'Your connection has been reactivated'),
(8,8,'Payment of Rs.1085 received successfully'),
(9,9,'Your bill of Rs.720 is overdue'),
(10,10,'Payment of Rs.962.50 received successfully'),
(11,11,'Your bill of Rs.3540 is due on 2024-02-20'),
(12,12,'Your bill of Rs.700 is overdue'),
(13,13,'Payment of Rs.12325 received successfully'),
(14,14,'Meter reading scheduled for 2024-03-01'),
(15,15,'Your bill of Rs.560 is overdue'),
(16,16,'Payment of Rs.4320 received successfully'),
(17,17,'Scheduled maintenance on 2024-03-10 in your area'),
(18,18,'Your bill of Rs.1050 is overdue'),
(19,19,'Payment of Rs.3660 received successfully'),
(20,20,'Your bill of Rs.770 is due on 2024-03-20'),
(21,21,'Your bill of Rs.11730 is overdue'),
(22,22,'Payment of Rs.682.50 received successfully'),
(23,23,'Meter reading scheduled for 2024-03-01'),
(24,24,'Your bill of Rs.3180 is overdue'),
(25,25,'Payment of Rs.752.50 received successfully'),
(26,26,'Power restored in your area'),
(27,27,'Your bill of Rs.2940 is overdue'),
(28,28,'Payment of Rs.612.50 received successfully'),
(29,29,'Your bill of Rs.997.50 is due on 2024-03-20'),
(30,30,'Payment of Rs.9350 received successfully'),
(31,31,'Your bill of Rs.840 is overdue'),
(32,32,'Payment of Rs.4080 received successfully'),
(33,33,'Meter reading scheduled for 2024-04-01'),
(34,34,'Your bill of Rs.1120 is overdue'),
(35,35,'Payment of Rs.690 received successfully'),
(36,36,'Scheduled maintenance on 2024-04-05 in your area'),
(37,37,'Your bill of Rs.3420 is overdue'),
(38,38,'Payment of Rs.682.50 received successfully'),
(39,39,'Your bill of Rs.945 is due on 2024-04-20'),
(40,40,'Payment of Rs.10625 received successfully'),
(41,41,'Your bill of Rs.735 is overdue'),
(42,42,'Payment of Rs.1050 received successfully'),
(43,43,'Meter reading scheduled for 2024-04-01'),
(44,44,'Your bill of Rs.647.50 is overdue'),
(45,45,'Power restored in your area'),
(46,46,'Payment of Rs.822.50 received successfully'),
(47,47,'Your bill of Rs.3060 is overdue'),
(48,48,'Payment of Rs.1015 received successfully'),
(49,49,'Your bill of Rs.770 is due on 2024-04-20'),
(50,50,'Payment of Rs.11220 received successfully');

CREATE TABLE audits (
    audit_id INT PRIMARY KEY,
    employee_id INT,
    action_performed VARCHAR(100),
    audit_date DATETIME,
    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
);
INSERT INTO audits VALUES
(1,1,'Meter Reading Updated','2024-01-31 09:00:00'),
(2,2,'Bill Generated','2024-02-05 10:30:00'),
(3,3,'Payment Verified','2024-02-07 11:00:00'),
(4,4,'Complaint Registered','2024-02-08 14:00:00'),
(5,5,'Connection Activated','2024-02-09 09:30:00'),
(6,6,'Meter Reading Updated','2024-02-10 10:00:00'),
(7,7,'Bill Generated','2024-02-11 11:30:00'),
(8,8,'Payment Verified','2024-02-12 14:30:00'),
(9,9,'Complaint Resolved','2024-02-13 09:00:00'),
(10,10,'Transformer Inspected','2024-02-14 10:30:00'),
(11,11,'Meter Reading Updated','2024-02-15 11:00:00'),
(12,12,'Bill Generated','2024-02-16 09:30:00'),
(13,13,'Connection Deactivated','2024-02-17 10:00:00'),
(14,14,'Penalty Applied','2024-02-18 11:30:00'),
(15,15,'Outage Reported','2024-02-19 14:00:00'),
(16,1,'Notification Sent','2024-02-20 09:00:00'),
(17,2,'Meter Reading Updated','2024-02-21 10:30:00'),
(18,3,'Bill Generated','2024-02-22 11:00:00'),
(19,4,'Payment Verified','2024-02-23 14:30:00'),
(20,5,'Complaint Registered','2024-02-24 09:30:00'),
(21,6,'Meter Reading Updated','2024-02-25 10:00:00'),
(22,7,'Bill Generated','2024-02-26 11:30:00'),
(23,8,'Transformer Inspected','2024-02-27 14:00:00'),
(24,9,'Complaint Resolved','2024-02-28 09:00:00'),
(25,10,'Penalty Applied','2024-02-29 10:30:00'),
(26,11,'Outage Reported','2024-03-01 11:00:00'),
(27,12,'Notification Sent','2024-03-02 09:30:00'),
(28,13,'Meter Reading Updated','2024-03-03 10:00:00'),
(29,14,'Bill Generated','2024-03-04 11:30:00'),
(30,15,'Payment Verified','2024-03-05 14:00:00');

select action_performed,employee_id from audits
where employee_id>10

-- 1. List all consumers with their connection type and status
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    cn.connection_type,
    cn.status
FROM consumers c
JOIN connections cn ON c.consumer_id = cn.consumer_id
ORDER BY c.consumer_id;

-- 2. Show all bills with consumer name and payment status
SELECT 
    b.bill_id,
    c.consumer_name,
    b.bill_date,
    b.amount,
    b.status AS bill_status,
    p.payment_method,
    p.payment_date
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
LEFT JOIN payments p ON b.bill_id = p.bill_id
ORDER BY b.bill_date;

-- 3. Display meter details with consumer name and meter type
SELECT 
    c.consumer_name,
    m.meter_id,
    m.meter_type,
    m.install_date,
    cn.connection_type
FROM meters m
JOIN connections cn ON m.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY m.install_date;

-- 5. List transformers with their area names and capacity
SELECT 
    t.transformer_id,
    t.transformer_name,
    t.capacity_kva,
    a.area_name
FROM transformers t
JOIN areas a ON t.area_id = a.area_id
ORDER BY t.capacity_kva DESC;

-- AGGREGATE FUNCTIONS
-- 6. Total revenue collected per payment method
SELECT 
    payment_method,
    COUNT(payment_id) AS total_transactions,
    SUM(amount) AS total_collected,
    ROUND(AVG(amount),2) AS avg_payment
FROM payments
GROUP BY payment_method
ORDER BY total_collected DESC;

7. -- Count of connections by type and status
SELECT 
    connection_type,
    status,
    COUNT(*) AS total_connections
FROM connections
GROUP BY connection_type, status
ORDER BY connection_type, status;

8 -- Total units consumed per connection type
SELECT 
    cn.connection_type,
    SUM(mr.units_consumed) AS total_units,
    ROUND(AVG(mr.units_consumed),2) AS avg_units,
    MAX(mr.units_consumed) AS max_units,
    MIN(mr.units_consumed) AS min_units
FROM meter_readings mr
JOIN meters m ON mr.meter_id = m.meter_id
JOIN connections cn ON m.connection_id = cn.connection_id
GROUP BY cn.connection_type;

-- 9. Monthly bill collection summary
SELECT 
    DATE_FORMAT(bill_date, '%Y-%m') AS bill_month,
    COUNT(bill_id)                  AS total_bills,
    SUM(amount)                     AS total_amount,
    SUM(CASE WHEN status = 'Paid'   THEN amount ELSE 0 END) AS paid_amount,
    SUM(CASE WHEN status = 'Unpaid' THEN amount ELSE 0 END) AS unpaid_amount
FROM bills
GROUP BY DATE_FORMAT(bill_date, '%Y-%m')
ORDER BY bill_month;

-- 10. Total penalties collected by unpaid bills
SELECT 
    b.bill_id,
    c.consumer_name,
    b.amount        AS bill_amount,
    p.penalty_amount,
    (b.amount + p.penalty_amount) AS total_due
FROM penalties p
JOIN bills b ON p.bill_id = b.bill_id
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY p.penalty_amount DESC;

-- SUBQUERIES 
-- 11. Consumers who have more than average bill amount
SELECT 
    c.consumer_name,
    b.amount,
    b.status
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
WHERE b.amount > (SELECT AVG(amount) FROM bills)
ORDER BY b.amount DESC;

-- 12. Areas that have experienced outages
SELECT 
    a.area_name,
    COUNT(o.outage_id) AS total_outages,
    MIN(o.outage_date) AS first_outage,
    MAX(o.outage_date) AS last_outage
FROM outages o
JOIN areas a ON o.area_id = a.area_id
GROUP BY a.area_name
ORDER BY total_outages DESC;

-- 13. Consumers with unpaid bills and their penalty details
SELECT 
    c.consumer_name,
    c.phone,
    b.bill_id,
    b.amount        AS bill_amount,
    b.bill_date,
    COALESCE(pen.penalty_amount, 0) AS penalty
FROM consumers c
JOIN connections cn ON c.consumer_id = cn.consumer_id
JOIN bills b ON cn.connection_id = b.connection_id
LEFT JOIN penalties pen ON b.bill_id = pen.bill_id
WHERE b.status = 'Unpaid'
ORDER BY b.amount DESC;

-- 14. Top 5 highest electricity consuming connections
SELECT 
    c.consumer_name,
    cn.connection_type,
    SUM(mr.units_consumed) AS total_units
FROM meter_readings mr
JOIN meters m ON mr.meter_id = m.meter_id
JOIN connections cn ON m.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
GROUP BY c.consumer_name, cn.connection_type
ORDER BY total_units DESC
LIMIT 5;

-- 15. Consumers who have never filed a complaint
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    c.email
FROM consumers c
WHERE c.consumer_id NOT IN (
    SELECT DISTINCT consumer_id FROM complaints
)
ORDER BY c.consumer_id;

-- ============================================
-- ADVANCED JOINS & CASE STATEMENTS

-- 16. Bill summary with slab-based category using CASE
SELECT 
    c.consumer_name,
    cn.connection_type,
    b.amount,
    CASE 
        WHEN b.amount < 500   THEN 'Low Usage'
        WHEN b.amount < 2000  THEN 'Medium Usage'
        WHEN b.amount < 8000  THEN 'High Usage'
        ELSE 'Very High Usage'
    END AS usage_category,
    b.status
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY b.amount DESC;

-- 17. Employee audit activity report
SELECT 
    e.employee_name,
    e.designation,
    COUNT(a.audit_id)         AS total_actions,
    MIN(a.audit_date)         AS first_action,
    MAX(a.audit_date)         AS last_action
FROM audits a
JOIN employees e ON a.employee_id = e.employee_id
GROUP BY e.employee_name, e.designation
ORDER BY total_actions DESC;

-- 18. Complaint resolution rate by complaint type
SELECT 
    comp.complaint_type,
    COUNT(*)                                                        AS total_complaints,
    SUM(CASE WHEN cs.status = 'Resolved'    THEN 1 ELSE 0 END)     AS resolved,
    SUM(CASE WHEN cs.status = 'In Progress' THEN 1 ELSE 0 END)     AS in_progress,
    SUM(CASE WHEN cs.status = 'Pending'     THEN 1 ELSE 0 END)     AS pending,
    ROUND(SUM(CASE WHEN cs.status = 'Resolved' THEN 1 ELSE 0 END)
          * 100.0 / COUNT(*), 2)                                    AS resolution_rate_pct
FROM complaints comp
JOIN complaint_status cs ON comp.complaint_id = cs.complaint_id
GROUP BY comp.complaint_type
ORDER BY resolution_rate_pct DESC;

-- 19. Consumer full profile — consumer + address + connection + meter
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    c.email,
    ad.city,
    ad.state,
    ad.pincode,
    cn.connection_type,
    cn.status     AS connection_status,
    m.meter_type,
    m.install_date
FROM consumers c
JOIN addresses ad  ON c.consumer_id  = ad.consumer_id
JOIN connections cn ON c.consumer_id = cn.consumer_id
JOIN meters m       ON cn.connection_id = m.connection_id
ORDER BY c.consumer_id;

-- 20. Power usage vs billed amount comparison
SELECT 
    c.consumer_name,
    cn.connection_type,
    pu.units_used,
    b.amount       AS billed_amount,
    ROUND(b.amount / pu.units_used, 2) AS effective_rate_per_unit
FROM power_usage pu
JOIN connections cn ON pu.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id
JOIN bills b        ON cn.connection_id = b.connection_id
ORDER BY effective_rate_per_unit DESC;

-- ============================================
-- WINDOW FUNCTIONS & RANKING

-- 21. Rank consumers by bill amount within each connection type
SELECT 
    c.consumer_name,
    cn.connection_type,
    b.amount,
    RANK() OVER (
        PARTITION BY cn.connection_type 
        ORDER BY b.amount DESC
    ) AS rank_in_type
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id;

-- 22. Running total of payments month by month
SELECT 
    DATE_FORMAT(payment_date, '%Y-%m')    AS pay_month,
    SUM(amount)                           AS monthly_collected,
    SUM(SUM(amount)) OVER (
        ORDER BY DATE_FORMAT(payment_date, '%Y-%m')
    )                                     AS running_total
FROM payments
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY pay_month;

-- 23. Meter reading comparison — current vs previous month units
SELECT 
    mr.meter_id,
    c.consumer_name,
    mr.reading_date,
    mr.units_consumed,
    LAG(mr.units_consumed) OVER (
        PARTITION BY mr.meter_id 
        ORDER BY mr.reading_date
    )                                             AS prev_month_units,
    mr.units_consumed - LAG(mr.units_consumed) OVER (
        PARTITION BY mr.meter_id 
        ORDER BY mr.reading_date
    )                                             AS difference
FROM meter_readings mr
JOIN meters m       ON mr.meter_id      = m.meter_id
JOIN connections cn ON m.connection_id  = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id;

-- 24. Percentile rank of each bill amount
SELECT 
    c.consumer_name,
    b.amount,
    ROUND(PERCENT_RANK() OVER (ORDER BY b.amount) * 100, 2) AS percentile_rank,
    NTILE(4) OVER (ORDER BY b.amount)                       AS quartile
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id
ORDER BY b.amount;

-- 25. Dense rank of areas by number of outages
SELECT 
    a.area_name,
    COUNT(o.outage_id) AS outage_count,
    DENSE_RANK() OVER (
        ORDER BY COUNT(o.outage_id) DESC
    ) AS outage_rank
FROM areas a
LEFT JOIN outages o ON a.area_id = o.area_id
GROUP BY a.area_name
ORDER BY outage_rank;

-- ============================================
-- STORED PROCEDURE & VIEW

-- 26. View: Unpaid bills with penalty and total due
CREATE VIEW vw_unpaid_dues AS
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    b.bill_id,
    b.bill_date,
    b.amount                        AS bill_amount,
    COALESCE(p.penalty_amount, 0)   AS penalty,
    b.amount + COALESCE(p.penalty_amount, 0) AS total_due
FROM bills b
JOIN connections cn  ON b.connection_id  = cn.connection_id
JOIN consumers c     ON cn.consumer_id   = c.consumer_id
LEFT JOIN penalties p ON b.bill_id       = p.bill_id
WHERE b.status = 'Unpaid';

-- Query the view
SELECT * FROM vw_unpaid_dues ORDER BY total_due DESC;

-- 27. View: Area-wise outage and transformer summary
CREATE VIEW vw_area_summary AS
SELECT 
    a.area_name,
    t.transformer_name,
    t.capacity_kva,
    COUNT(o.outage_id) AS total_outages
FROM areas a
LEFT JOIN transformers t ON a.area_id = t.area_id
LEFT JOIN outages o      ON a.area_id = o.area_id
GROUP BY a.area_name, t.transformer_name, t.capacity_kva;

-- Query the view
SELECT * FROM vw_area_summary ORDER BY total_outages DESC;

-- 28. Stored Procedure: Get full bill details by consumer ID
DELIMITER $$
CREATE PROCEDURE GetConsumerBillDetails(IN p_consumer_id INT)
BEGIN
    SELECT 
        c.consumer_name,
        c.phone,
        b.bill_id,
        b.bill_date,
        b.amount,
        b.status,
        COALESCE(p.payment_method, 'Not Paid') AS payment_method,
        COALESCE(p.payment_date,   NULL)        AS payment_date,
        COALESCE(pen.penalty_amount, 0)         AS penalty
    FROM consumers c
    JOIN connections cn  ON c.consumer_id    = cn.consumer_id
    JOIN bills b         ON cn.connection_id = b.connection_id
    LEFT JOIN payments p   ON b.bill_id      = p.bill_id
    LEFT JOIN penalties pen ON b.bill_id     = pen.bill_id
    WHERE c.consumer_id = p_consumer_id;
END $$
DELIMITER ;

-- Call the procedure
CALL GetConsumerBillDetails(3);

-- 29. Stored Procedure: Monthly revenue report
DELIMITER $$
CREATE PROCEDURE GetMonthlyRevenue(IN p_year INT)
BEGIN
    SELECT 
        DATE_FORMAT(payment_date, '%M')   AS month_name,
        COUNT(payment_id)                 AS total_payments,
        SUM(amount)                       AS revenue,
        ROUND(AVG(amount), 2)             AS avg_payment
    FROM payments
    WHERE YEAR(payment_date) = p_year
    GROUP BY DATE_FORMAT(payment_date, '%M'), MONTH(payment_date)
    ORDER BY MONTH(payment_date);
END $$
DELIMITER ;

-- Call the procedure
CALL GetMonthlyRevenue(2024);

-- 30. Stored Procedure: Flag high usage consumers (above threshold)
DELIMITER $$
CREATE PROCEDURE GetHighUsageConsumers(IN p_threshold INT)
BEGIN
    SELECT 
        c.consumer_name,
        c.phone,
        c.email,
        cn.connection_type,
        mr.units_consumed,
        b.amount,
        b.status
    FROM meter_readings mr
    JOIN meters m       ON mr.meter_id      = m.meter_id
    JOIN connections cn ON m.connection_id  = cn.connection_id
    JOIN consumers c    ON cn.consumer_id   = c.consumer_id
    JOIN bills b        ON cn.connection_id = b.connection_id
    WHERE mr.units_consumed > p_threshold
    ORDER BY mr.units_consumed DESC;
END $$
DELIMITER ;

-- Call the procedure
CALL GetHighUsageConsumers(500);



