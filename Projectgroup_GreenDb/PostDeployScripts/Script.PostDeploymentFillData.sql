/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--This block of statements deaktivate all foreign keys 

ALTER TABLE Bookings NOCHECK CONSTRAINT FK_Bookings_ToRooms;
ALTER TABLE BookingSpecifications NOCHECK CONSTRAINT FK_BookingSpecifications_ToExtraServiceOptions, FK_BookingSpecifications_ToCustomers, FK_BookingSpecifications_ToBookings;
ALTER TABLE Employees NOCHECK CONSTRAINT FK_Employees_ToPostitions;
ALTER TABLE Dialouges NOCHECK CONSTRAINT FK_Dialouges_ToBookings, FK_Dialouges_ToEmployees, FK_Dialouges_ToCustomers;
ALTER TABLE Feedbacks NOCHECK CONSTRAINT FK_Feedbacks_ToCustomers, FK_Feedbacks_ToBookings;
ALTER TABLE Payments NOCHECK CONSTRAINT FK_Payments_ToTotalBookingSums, FK_Payments_ToPaymentOptions, FK_Payments_ToBookings;
ALTER TABLE Rooms NOCHECK CONSTRAINT FK_Rooms_ToRoomtypes;
ALTER TABLE RoomTypes NOCHECK CONSTRAINT FK_RoomTypes_ToPositions;
ALTER TABLE StayingGuests NOCHECK CONSTRAINT FK_StayingGuests_ToCustomers, FK_StayingGuests_ToBookings, FK_StayingGuests_ToRooms;
ALTER TABLE TotalBookingSums NOCHECK CONSTRAINT FK_TotalBookingSums_ToBookings, FK_TotalBookingSums_ToExtraServiceOptions;



--This script creates the customer base of the Hotel

IF NOT EXISTS (SELECT Id FROM Customers WHERE Id = 1)
BEGIN  

    SET IDENTITY_INSERT dbo.Customers ON;

    insert into Customers ([Id], FullName, Address, Telephone, Email) values (1, 'Archambault Janusik', '79 Division Point', '9798238378', 'ajanusik0@google.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (2, 'Hoyt Aloshikin', '015 Westridge Street', '2701897259', 'haloshikin1@wisc.edu');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (3, 'Marven Kelloway', '57928 Onsgard Drive', '8599583819', 'mkelloway2@scientificamerican.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (4, 'Zarla Beaty', '7665 Emmet Way', '3229571775', 'zbeaty3@free.fr');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (5, 'Jan Erricker', '155 Banding Lane', '8609863703', 'jerricker4@fotki.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (6, 'Celestine Fermor', '6368 Sunnyside Terrace', '3563705447', 'cfermor5@51.la');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (7, 'Rolf Sarra', '832 Vera Place', '4254826180', 'rsarra6@networksolutions.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (8, 'Ora Banane', '3681 Melrose Drive', '7528713349', 'obanane7@deliciousdays.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (9, 'Burr Lehrahan', '3 Union Place', '4907313929', 'blehrahan8@dot.gov');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (10, 'Juliet Maha', '287 Crest Line Center', '3763168800', 'jmaha9@mediafire.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (11, 'Everard Plowes', '6 Chive Center', '5929372313', 'eplowesa@homestead.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (12, 'Gillie Tappin', '523 David Hill', '8145941029', 'gtappinb@earthlink.net');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (13, 'Serene Ridsdale', '0 Crest Line Junction', '1597393002', 'sridsdalec@aol.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (14, 'Dwight Lomax', '5868 Thompson Plaza', '1287261390', 'dlomaxd@odnoklassniki.ru');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (15, 'Renado Boughey', '8 Kenwood Terrace', '7427255436', 'rbougheye@stanford.edu');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (16, 'Luigi Bilton', '5094 Toban Point', '1796226385', 'lbiltonf@artisteer.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (17, 'Sigmund Velde', '6 Badeau Plaza', '8581522948', 'sveldeg@google.com.br');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (18, 'Sybilla Dimitrov', '5706 Jenifer Center', '1984985263', 'sdimitrovh@hexun.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (19, 'Christyna Pashan', '4969 Badeau Junction', '5517759583', 'cpashani@studiopress.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (20, 'Rowen Mitie', '826 Hooker Court', '7554637598', 'rmitiej@ucla.edu');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (21, 'Arin Geddes', '020 Algoma Avenue', '3214412404', 'ageddesk@twitpic.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (22, 'Bent Keaveney', '356 Jenifer Point', '5559924758', 'bkeaveneyl@mtv.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (23, 'Torrence Capoun', '462 Stoughton Avenue', '6409392870', 'tcapounm@liveinternet.ru');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (24, 'Sharia Postgate', '5 Miller Drive', '5254113771', 'spostgaten@usa.gov');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (25, 'Josy Fatkin', '8 Dahle Hill', '4494610671', 'jfatkino@canalblog.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (26, 'Lamont Cotte', '2620 Dawn Point', '9785563972', 'lcottep@w3.org');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (27, 'Burgess Turbefield', '4949 Utah Trail', '1925592027', 'bturbefieldq@mlb.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (28, 'Dolf Kikke', '0881 Continental Park', '7543468890', 'dkikker@deliciousdays.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (29, 'Roarke Ivanets', '82 Independence Street', '7569662646', 'rivanetss@paginegialle.it');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (30, 'Jennifer Grafton', '681 Sutteridge Point', '4516755743', 'jgraftont@foxnews.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (31, 'Gifford De Zuani', '20 Melby Point', '3735882488', 'gdeu@ox.ac.uk');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (32, 'Myrta Gercken', '9 Holmberg Court', '8811552476', 'mgerckenv@deviantart.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (33, 'Farlie Amos', '5486 Lerdahl Avenue', '4035105379', 'famosw@telegraph.co.uk');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (34, 'Cliff Wiseman', '11764 Waubesa Road', '9747834385', 'cwisemanx@multiply.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (35, 'Edyth Lanchbury', '120 Vahlen Street', '7808049887', 'elanchburyy@youtube.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (36, 'Davy Deverson', '2 Thierer Terrace', '6754596132', 'ddeversonz@disqus.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (37, 'Roley Andrat', '3 Express Hill', '1253958368', 'randrat10@pagesperso-orange.fr');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (38, 'Beverly Mc Andrew', '229 Donald Center', '3915138263', 'bmc11@example.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (39, 'Bar Gerriessen', '25650 Drewry Alley', '4736666539', 'bgerriessen12@mail.ru');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (40, 'Dominick Wooddisse', '58917 Mandrake Plaza', '6433949814', 'dwooddisse13@independent.co.uk');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (41, 'Amalia McKellen', '97071 Clemons Junction', '6219219036', 'amckellen14@mysql.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (42, 'Fee Perceval', '2 Amoth Trail', '4128802306', 'fperceval15@homestead.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (43, 'Becki Ketchaside', '143 Clove Plaza', '3012083882', 'bketchaside16@eepurl.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (44, 'Myranda Mees', '01 Ronald Regan Plaza', '4556225869', 'mmees17@tinyurl.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (45, 'Bekki Humburton', '238 Green Ridge Parkway', '2474672928', 'bhumburton18@imageshack.us');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (46, 'Guillemette Clymo', '9 Straubel Street', '8944317431', 'gclymo19@ed.gov');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (47, 'Meyer Kemm', '0473 Delladonna Point', '6918161374', 'mkemm1a@kickstarter.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (48, 'Kale Mattys', '9 Dahle Trail', '7681619923', 'kmattys1b@deliciousdays.com');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (49, 'Selie Darragh', '7 Mcbride Parkway', '3258798998', 'sdarragh1c@redcross.org');
    insert into Customers ([Id], FullName, Address, Telephone, Email) values (50, 'Bathsheba Laffoley-Lane', '80589 Lerdahl Trail', '5815713349', 'blaffoleylane1d@yolasite.com');

    SET IDENTITY_INSERT dbo.Customers OFF;

END

--This script creates the employee positions of the Hotel

IF NOT EXISTS (SELECT Id FROM Positions WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.Positions ON;

    insert into Positions (Id, Positions) values (1, 'Janitor');
    insert into Positions (Id, Positions) values (2, 'Receptionist');
    insert into Positions (Id, Positions) values (3, 'Restaurant Personel');
    insert into Positions (Id, Positions) values (4, 'Bookings manager');
    insert into Positions (Id, Positions) values (5, 'Hotel Manager');
    

    SET IDENTITY_INSERT dbo.Positions OFF;

END

--This script creates the employees of the Hotel

IF NOT EXISTS (SELECT Id FROM Employees WHERE Id = 1)
BEGIN  

    SET IDENTITY_INSERT dbo.Employees ON;

    insert into Employees (Id, FullName, Salary, PositionId) values (1, 'Stormi Persehouse', 50000, 5);
    insert into Employees (Id, FullName, Salary, PositionId) values (2, 'Filia Sampey', 20000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (3, 'Maurise Imm', 500000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (4, 'Mylo Cornick', 50000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (5, 'Shena Abden', 20000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (6, 'Neale Kalvin', 150000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (7, 'Laural Bellelli', 30000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (8, 'Hermia Winsborrow', 250000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (9, 'Erin McConnell', 40000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (10, 'Karney Blatchford', 35000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (11, 'Katerina Bunstone', 28000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (12, 'Myrah Linskey', 28000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (13, 'Hedi Gladhill', 18000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (14, 'Eulalie Reeders', 17000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (15, 'Heath Scroggs', 43000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (16, 'Del Tulloch', 19000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (17, 'Placenta Choppin', 23000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (18, 'Jen Pellitt', 24000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (19, 'Benson Paradin', 27000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (20, 'Silva Gutteridge', 29000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (21, 'Jessica MacCambridge', 32000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (22, 'Broddie MacPharlain', 33000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (23, 'Sascha Veness', 36000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (24, 'Thomas Tandy', 37000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (25, 'Paulie Santostefano.', 41000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (26, 'Ford Schanke', 42000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (27, 'Gussie Frise', 21000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (28, 'Cahra Willwood', 22000, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (29, 'Magnum Garfirth', 26000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (30, 'Katie Ellington', 36000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (31, 'Ardisj Innocent', 34000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (32, 'Iseabal Renncock', 26500, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (33, 'Helge Allabush', 24500, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (34, 'Cynthie Artingstall', 17500, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (35, 'Chalmers Herche', 18500, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (36, 'Engracia L''Hommee', 19500, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (37, 'Royall Mollitt', 22500, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (38, 'Hunter Segebrecht', 25500, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (39, 'Pryce Kalinowsky', 26000, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (40, 'Fairfax Lockney', 27500, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (41, 'Lorin Bobasch', 14000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (42, 'Clemens Gronav', 13000, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (43, 'Yolane Chetwin', 18500, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (44, 'Clemmie Ellph', 21500, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (45, 'Henka Andric', 23800, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (46, 'Nels Dreger', 26300, 2);
    insert into Employees (Id, FullName, Salary, PositionId) values (47, 'Thorpe McReedy', 27900, 3);
    insert into Employees (Id, FullName, Salary, PositionId) values (48, 'Danyelle Jays', 25800, 4);
    insert into Employees (Id, FullName, Salary, PositionId) values (49, 'Andriette Nel', 48000, 1);
    insert into Employees (Id, FullName, Salary, PositionId) values (50, 'Delora Gordon', 45900, 2);

    SET IDENTITY_INSERT dbo.Employees OFF;

END

--This script creates the payment options

IF NOT EXISTS (SELECT Id FROM PaymentOptions WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.PaymentOptions ON;

    insert into PaymentOptions (Id, PaymentOption) values (1, 'Credit Card');
    insert into PaymentOptions (Id, PaymentOption) values (2, 'Cash');
    insert into PaymentOptions (Id, PaymentOption) values (3, 'Invoice');

    SET IDENTITY_INSERT dbo.PaymentOptions OFF;

END

--This script creates the roomtypes of the room

IF NOT EXISTS (SELECT Id FROM RoomTypes WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.RoomTypes ON;

    insert into RoomTypes (Id, RoomType, NumberOfBeds, Cost, CostForExtraBeds, PositionId) values (1, 'Closet', 1, 300, 100, 1);
    insert into RoomTypes (Id, RoomType, NumberOfBeds, Cost, CostForExtraBeds, PositionId) values (2, 'Double Room', 2, 600, 500, 2);
    insert into RoomTypes (Id, RoomType, NumberOfBeds, Cost, CostForExtraBeds, PositionId) values (3, 'Suite', 4, 5000, 1000, 2);
    insert into RoomTypes (Id, RoomType, Cost, PositionId) values (4, 'ConfereceRoom', 10000, 4);

    SET IDENTITY_INSERT dbo.RoomTypes OFF;

END

--This script creates the ExtraServices for the bookings

IF NOT EXISTS (SELECT Id FROM ExtraServiceOptions WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.ExtraServiceOptions ON;

    insert into ExtraServiceOptions (Id, ExtraOption, Cost) values (1, 'Chocolate', 200);
    insert into ExtraServiceOptions (Id, ExtraOption, Cost) values (2, 'Roses', 200 );
    insert into ExtraServiceOptions (Id, ExtraOption, Cost) values (3, 'Massage', 800 );
    insert into ExtraServiceOptions (Id, ExtraOption, Cost) values (4, 'Champagne', 1000);

    SET IDENTITY_INSERT dbo.ExtraServiceOptions OFF;

END


 --Here are four Whileloopar that creates 400 rooms with the different room types
    --Loop 1 : while the variabel is 1   < variabel > 200, the variabel gets id, RoomTypeId becomes 1
    --Loop 2 : while the variabel is 201 < variabel > 350, the variabel gets id, RoomTypeId becomes 2
    --Loop 3 : while the variabel is 351 < variabel > 395, the variabel gets id, RoomTypeId becomes 3
    --Loop 2 : while the variabel is 396 < variabel > 400, the variabel gets id, RoomTypeId becomes 4


IF NOT EXISTS (SELECT Id FROM Rooms WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.Rooms ON;

    DECLARE @Room INT
    SET @Room = 1
    WHILE (@Room <= 200)
    BEGIN
        insert into Rooms (Id, RoomTypeId) values (CONVERT(VARCHAR,@Room), 1)
        SET @Room = @Room + 1
    END
	SET @Room = 201
    WHILE (@Room <= 350)
    BEGIN
        insert into Rooms (Id, RoomTypeId) values (CONVERT(VARCHAR,@Room), 2)
        SET @Room = @Room + 1
    END
	SET @Room = 351
    WHILE (@Room <= 395)
    BEGIN
        insert into Rooms (Id, RoomTypeId) values (CONVERT(VARCHAR,@Room), 3)
        SET @Room = @Room + 1
    END
	SET @Room = 396
    WHILE (@Room <= 400)
    BEGIN
        insert into Rooms (Id, RoomTypeId) values (CONVERT(VARCHAR,@Room), 4)
        SET @Room = @Room + 1
    END

    SET IDENTITY_INSERT dbo.Rooms OFF;

END

IF NOT EXISTS (SELECT Id FROM Bookings WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.Bookings ON;

    insert into Bookings (Id, RoomId) values (1, 319);
    insert into Bookings (Id, RoomId) values (2, 292);
    insert into Bookings (Id, RoomId) values (3, 322);
    insert into Bookings (Id, RoomId) values (4, 400);
    insert into Bookings (Id, RoomId) values (5, 266);
    insert into Bookings (Id, RoomId) values (6, 175);
    insert into Bookings (Id, RoomId) values (7, 143);
    insert into Bookings (Id, RoomId) values (8, 283);
    insert into Bookings (Id, RoomId) values (9, 163);
    insert into Bookings (Id, RoomId) values (10, 147);
    insert into Bookings (Id, RoomId) values (11, 232);
    insert into Bookings (Id, RoomId) values (12, 144);
    insert into Bookings (Id, RoomId) values (13, 264);
    insert into Bookings (Id, RoomId) values (14, 4);
    insert into Bookings (Id, RoomId) values (15, 194);
    insert into Bookings (Id, RoomId) values (16, 194);
    insert into Bookings (Id, RoomId) values (17, 333);
    insert into Bookings (Id, RoomId) values (18, 118);
    insert into Bookings (Id, RoomId) values (19, 44);
    insert into Bookings (Id, RoomId) values (20, 49);
    insert into Bookings (Id, RoomId) values (21, 136);
    insert into Bookings (Id, RoomId) values (22, 126);
    insert into Bookings (Id, RoomId) values (23, 290);
    insert into Bookings (Id, RoomId) values (24, 121);
    insert into Bookings (Id, RoomId) values (25, 155);
    insert into Bookings (Id, RoomId) values (26, 155);
    insert into Bookings (Id, RoomId) values (27, 372);
    insert into Bookings (Id, RoomId) values (28, 292);
    insert into Bookings (Id, RoomId) values (29, 334);
    insert into Bookings (Id, RoomId) values (30, 360);

   SET IDENTITY_INSERT dbo.Bookings OFF;

END

-- This codeblock creates bookings, both that has been and future ones

IF NOT EXISTS (SELECT BookingId FROM BookingSpecifications WHERE BookingId = 1)
BEGIN 

    --SET IDENTITY_INSERT dbo.BookingSpecifications ON;

    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (1, 40, 2, 2, '2020-09-18', '2020-09-28');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (2, 42, 2, 1, '2020-10-09', '2020-10-10');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (3, 38, 3, 4, '2021-11-15', '2021-11-22');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (4, 48, 1, 3, '2020-08-07', '2020-08-22');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (5, 3, 2, 3, '2021-12-20', '2021-12-30');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (6, 19, 2, 1, '2020-08-07', '2020-08-09');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (7, 26, 3, 4, '2021-12-04', '2021-12-07');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (8, 12, 1, 1, '2021-11-22', '2021-11-30');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (9, 40, 3, 3, '2021-12-28', '2021-12-29');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (10, 8, 1, 4, '2021-01-10', '2021-01-18');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (11, 31, 3, 2, '2020-12-06', '2020-12-10');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (12, 7, 1, 3, '2021-07-12', '2021-07-18');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (13, 50, 2, 2, '2020-07-29', '2020-08-05');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (14, 24, 2, 3, '2020-11-18', '2020-11-29');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (15, 16, 1, 2, '2020-11-24', '2020-11-26');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (16, 31, 3, 1, '2021-02-25', '2021-02-28');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (17, 4, 2, 1, '2021-01-06', '2021-01-10');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (18, 49, 2, 1, '2020-07-06', '2020-07-11');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (19, 12, 2, 2, '2020-10-07', '2020-10-10');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (20, 24, 3, 3, '2021-06-17', '2021-06-20');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (21, 46, 1, 3, '2021-09-09', '2021-09-15');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (22, 34, 3, 3, '2021-12-18', '2021-12-26');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (23, 24, 2, 1, '2020-09-26', '2020-10-01');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (24, 21, 3, 2, '2020-12-30', '2021-01-01');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (25, 20, 1, 4, '2020-07-30', '2020-08-05');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (26, 11, 1, 3, '2021-11-20', '2021-11-30');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (27, 35, 3, 2, '2020-11-11', '2020-11-18');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (28, 2, 1, 3, '2020-08-04', '2020-08-16');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (29, 22, 3, 4, '2021-11-10', '2021-11-17');
    insert into BookingSpecifications (BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate) values (30, 15, 3, 3, '2020-07-28', '2020-07-30');

  --SET IDENTITY_INSERT dbo.BookingSpecifications OFF;

END

-- This code block adds feedback from previous bookings

IF NOT EXISTS (SELECT CustomerId FROM Feedbacks WHERE CustomerId = 1)
BEGIN 

    --SET IDENTITY_INSERT dbo.Feedbacks ON;

    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (1, 4, 5, 'Realigned directional matrix');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (2, 11, 5, 'Reverse-engineered well-modulated implementation');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (3, 24, 4, 'Vision-oriented 5th generation software');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (4, 28, 2, 'Robust bandwidth-monitored portal');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (5, 15, 3, 'Distributed radical archive');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (6, 23, 5, 'Assimilated neutral functionalities');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (7, 30, 3, 'Visionary 24/7 internet solution');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (8, 19, 4, 'Phased solution-oriented synergy');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (9, 25, 1, 'Upgradable global array');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (10, 14, 5, 'Optional content-based initiative');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (11, 13, 4, 'Expanded optimizing conglomeration');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (12, 6, 2, 'Diverse global projection');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (13, 1, 5, 'Down-sized homogeneous framework');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (14, 27, 5, 'Up-sized encompassing moderator');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (15, 18, 3, 'Profit-focused zero defect matrices');
    insert into Feedbacks (CustomerId, BookingId, Rating, Feedback) values (16, 2, 2, 'Realigned heuristic pricing structure');

    --SET IDENTITY_INSERT dbo.Feedbacks OFF;

END

--This code block fills in bookings and the room type

IF NOT EXISTS (SELECT Id FROM Bookings WHERE Id = 1)
BEGIN 

    SET IDENTITY_INSERT dbo.Bookings ON;

    insert into Bookings (Id, RoomId) values (1, 175);
    insert into Bookings (Id, RoomId) values (2, 159);
    insert into Bookings (Id, RoomId) values (3, 162);
    insert into Bookings (Id, RoomId) values (4, 142);
    insert into Bookings (Id, RoomId) values (5, 304);
    insert into Bookings (Id, RoomId) values (6, 172);
    insert into Bookings (Id, RoomId) values (7, 286);
    insert into Bookings (Id, RoomId) values (8, 72);
    insert into Bookings (Id, RoomId) values (9, 22);
    insert into Bookings (Id, RoomId) values (10, 264);
    insert into Bookings (Id, RoomId) values (11, 376);
    insert into Bookings (Id, RoomId) values (12, 274);
    insert into Bookings (Id, RoomId) values (13, 131);
    insert into Bookings (Id, RoomId) values (14, 302);
    insert into Bookings (Id, RoomId) values (15, 268);
    insert into Bookings (Id, RoomId) values (16, 38);
    insert into Bookings (Id, RoomId) values (17, 360);
    insert into Bookings (Id, RoomId) values (18, 261);
    insert into Bookings (Id, RoomId) values (19, 79);
    insert into Bookings (Id, RoomId) values (20, 397);
    insert into Bookings (Id, RoomId) values (21, 128);
    insert into Bookings (Id, RoomId) values (22, 400);
    insert into Bookings (Id, RoomId) values (23, 377);
    insert into Bookings (Id, RoomId) values (24, 156);
    insert into Bookings (Id, RoomId) values (25, 10);
    insert into Bookings (Id, RoomId) values (26, 386);
    insert into Bookings (Id, RoomId) values (27, 214);
    insert into Bookings (Id, RoomId) values (28, 212);
    insert into Bookings (Id, RoomId) values (29, 154);
    insert into Bookings (Id, RoomId) values (30, 112);

    SET IDENTITY_INSERT dbo.Bookings OFF;

END

--This codeblock reactivates all the foreign keys --

ALTER TABLE Bookings CHECK CONSTRAINT FK_Bookings_ToRooms;
ALTER TABLE BookingSpecifications CHECK CONSTRAINT FK_BookingSpecifications_ToExtraServiceOptions, FK_BookingSpecifications_ToCustomers, FK_BookingSpecifications_ToBookings;
ALTER TABLE Employees CHECK CONSTRAINT FK_Employees_ToPostitions;
ALTER TABLE Dialouges CHECK CONSTRAINT FK_Dialouges_ToBookings, FK_Dialouges_ToEmployees, FK_Dialouges_ToCustomers;
ALTER TABLE Feedbacks CHECK CONSTRAINT FK_Feedbacks_ToCustomers, FK_Feedbacks_ToBookings;
ALTER TABLE Payments CHECK CONSTRAINT FK_Payments_ToTotalBookingSums, FK_Payments_ToPaymentOptions, FK_Payments_ToBookings;
ALTER TABLE Rooms CHECK CONSTRAINT FK_Rooms_ToRoomtypes;
ALTER TABLE RoomTypes CHECK CONSTRAINT FK_RoomTypes_ToPositions;
ALTER TABLE StayingGuests CHECK CONSTRAINT FK_StayingGuests_ToCustomers, FK_StayingGuests_ToBookings, FK_StayingGuests_ToRooms;
ALTER TABLE TotalBookingSums CHECK CONSTRAINT FK_TotalBookingSums_ToBookings, FK_TotalBookingSums_ToExtraServiceOptions;

