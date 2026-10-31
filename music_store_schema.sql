create database p2musicdb;

use p2musicdb;


CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    title VARCHAR(50),
    reports_to INT NULL,
    levels VARCHAR(10),
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(120),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(30),
    phone VARCHAR(30),
    fax VARCHAR(30),
    email VARCHAR(100)
);

drop table employee;

CREATE TABLE customer(
customer_id VARCHAR(30) PRIMARY KEY,
first_name CHAR(30),
last_name CHAR(30),
company VARCHAR(30),
address VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
postal_code INT8,
phone INT,
fax INT,
email VARCHAR(30),
support_rep_id VARCHAR(30));

ALTER TABLE customer
    MODIFY COLUMN company VARCHAR(90),
    MODIFY COLUMN address VARCHAR(90),
    MODIFY COLUMN phone VARCHAR(90),
    MODIFY COLUMN fax VARCHAR(90),
    MODIFY COLUMN email VARCHAR(90),
    MODIFY COLUMN support_rep_id VARCHAR(90);

INSERT INTO employee (employee_id,last_name,first_name,title,reports_to,levels,birthdate,hire_date,address,city,state,country,postal_code,phone,fax,email
)
VALUES ('9','Madan','Mohan','Senior General Manager',NULL,'L7','1961-01-26','2016-01-14','1008 Vrinda Ave MT','Edmonton','AB','Canada','T5K 2N1','+1 (780) 428-9482','+1 (780) 428-3457','madan.mohan@chinookcorp.com'
);

CREATE TABLE invoice(
invoice_id VARCHAR(30) PRIMARY KEY,
customer_id VARCHAR(30),
invoice_date TIMESTAMP,
billing_address VARCHAR(120),
billing_city VARCHAR(30),
billing_state VARCHAR(30),
billing_country VARCHAR(30),
billing_postal VARCHAR(30),
total FLOAT8);

CREATE TABLE invoice_line(
invoice_line_id VARCHAR(50) PRIMARY KEY,
invoice_id VARCHAR(30),
track_id VARCHAR(30),
unit_price VARCHAR(30),
quantity VARCHAR(30));

CREATE TABLE track(
track_id VARCHAR(50) PRIMARY KEY,
name VARCHAR(30),
album_id VARCHAR(30),
media_type_id VARCHAR(30),
genre_id VARCHAR(30),
composer VARCHAR(30),
milliseconds TIMESTAMP,
bytes INT8,
unit_price INT);
delete from track;

ALTER TABLE track
    MODIFY COLUMN name VARCHAR(255),
    MODIFY COLUMN composer VARCHAR(255),
    MODIFY COLUMN milliseconds INT UNSIGNED,
    MODIFY COLUMN bytes BIGINT UNSIGNED,
    MODIFY COLUMN unit_price DECIMAL(10,2);


CREATE TABLE playlist(
playlist_id VARCHAR(50) PRIMARY KEY, 
name  VARCHAR(30));

CREATE TABLE playlist_track(
playlist_id VARCHAR(50),
track_id VARCHAR(50),
 foreign key(playlist_id) references playlist(playlist_id),
 foreign key(track_id) references track(track_id)
 );

CREATE TABLE artist(
artist_id VARCHAR(50) PRIMARY KEY,
name  VARCHAR(30)); 

CREATE TABLE album(
album_id VARCHAR(50) PRIMARY KEY,
title  VARCHAR(30),
artist_id  VARCHAR(30));

CREATE TABLE media_type(
media_type_id VARCHAR(50) PRIMARY KEY,
name VARCHAR(30));

CREATE TABLE genre(
genre_id VARCHAR(50) PRIMARY KEY,
name VARCHAR(30));

delete from customer;
select * from customer;

INSERT INTO customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) VALUES 
('1', 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', 12227000, 551239235555, 551239235566, 'luisg@embraer.com.br', '3'),
('2', 'Leonie', 'Köhler', NULL, 'Theodor-Heuss-Straße 34', 'Stuttgart', NULL, 'Germany', 70174, 4907112842222, 4907112842223, 'leonie.koehler@surfeu.de', '5'),
('3', 'François', 'Tremblay', NULL, '1498 rue Bélanger', 'Montréal', 'QC', 'Canada', 217, 15147214711, NULL, 'ftremblay@gmail.com', '3'),
('4', 'Bjørn', 'Hansen', NULL, 'Ullevålsveien 14', 'Oslo', NULL, 'Norway', 0171, 4722442222, NULL, 'bjorn.hansen@yahoo.no', '4'),
('5', 'František', 'Wichterlová', 'JetBrains s.r.o.', 'Klanova 9/506', 'Prague', NULL, 'Czech Republic', 14700, 420241735555, 420241735550, 'frantisekw@jetbrains.com', '4'),
('6', 'Helena', 'Holý', NULL, 'Rilská 3174/6', 'Prague', NULL, 'Czech Republic', 14300, 420241770449, NULL, 'helena.holy@gmail.com', '5'),
('7', 'Astrid', 'Gruber', NULL, 'Rotenturmstraße 4, 1010 Innere Stadt', 'Vienne', NULL, 'Austria', 1010, 4301513305, NULL, 'astrid.gruber@apple.at', '5'),
('8', 'Daan', 'Peeters', NULL, 'Grétrystraat 63', 'Brussels', NULL, 'Belgium', 1000, 32022190330, NULL, 'daan.peeters@surfeu.be', '4'),
('9', 'Kara', 'Nielsen', NULL, 'Sønder Boulevard 51', 'Copenhagen', NULL, 'Denmark', 1720, 4533334999, NULL, 'kara.nielsen@jubii.dk', '4'),
('10', 'Eduardo', 'Martins', 'Woodstock S.A.', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', 1007010, 551130335446, 551130334564, 'eduardo.martins@woodstock.com.br', '4'),
('11', 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', 1310200, 551130553278, 551130558131, 'alerocha@uol.com.br', '5'),
('12', 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', 20040020, 552122716200, 552122717070, 'roberto.almeida@riotur.gov.br', '3'),
('13', 'Fernanda', 'Ramos', NULL, 'Qe 7 Bloco G', 'Brasília', 'DF', 'Brazil', 71020677, 556130917475, 556130917473, 'fernanda.ramos4@uol.com.br', '4'),
('14', 'Mark', 'Philips', NULL, 'Theodor-Heuss-Straße 34', 'Stuttgart', NULL, 'Germany', 70174, 4907112842222, 4907112842223, 'mark.philips@myspace.de', '5'),
('15', 'Jennifer', 'Peterson', NULL, '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 6118, 16046882255, 16046882244, 'jenniferp@rogers.ca', '3'),
('16', 'Frank', 'Harris', NULL, '1600 Amphitheatre Pkwy', 'Mountain View', 'CA', 'USA', 94043, 16502530000, 16502530001, 'fharris@google.com', '4'),
('17', 'Jack', 'Smith', NULL, '1 Microsoft Way', 'Redmond', 'WA', 'USA', 980528300, 14258828080, 14258828081, 'jacksmith@microsoft.com', '5'),
('18', 'Michelle', 'Brooks', NULL, '627 Broadway', 'New York', 'NY', 'USA', 100122612, 12122213546, 12122214679, 'michelleb@aol.com', '3'),
('19', 'Tim', 'Goyer', NULL, '1 Apple Park Way', 'Cupertino', 'CA', 'USA', 95014, 14089961010, 14089961011, 'tgoyer@apple.com', '3'),
('20', 'Dan', 'Miller', NULL, '5419 47th Street', 'Yellowknife', 'NT', 'Canada', 113, 18679202233, 18679202234, 'dmiller@comcast.com', '4'),
('21', 'Kathy', 'Chase', NULL, '801 W 4th Street', 'Reno', 'NV', 'USA', 89503, 17753234533, 17753234534, 'kachase@hotmail.com', '5'),
('22', 'Heather', 'Leacock', NULL, '120 Hanover Sq', 'London', NULL, 'United Kingdom', 11, 4402072243690, 4402072243691, 'hleacock@gmail.com', '4'),
('23', 'John', 'Gordon', NULL, '69 Salem Street', 'Boston', 'MA', 'USA', 2113, 16175221333, 16175221334, 'johngordon22@yahoo.com', '4'),
('24', 'Frank', 'Ralston', NULL, '162 E Superior Street', 'Chicago', 'IL', 'USA', 60611, 13123375500, 13123375501, 'fralston@gmail.com', '3'),
('25', 'Victor', 'Stevens', NULL, '319 N. Frances Street', 'Madison', 'WI', 'USA', 53703, 16082570597, 16082570598, 'vstevens@yahoo.com', '5'),
('26', 'Richard', 'Cunningham', NULL, '2211 W Berry Street', 'Fort Worth', 'TX', 'USA', 76110, 18179246565, 18179246566, 'ricunningham@hotmail.com', '4'),
('27', 'Patrick', 'Gray', NULL, '1033 N Park Ave', 'Tucson', 'AZ', 'USA', 85719, 15206224200, 15206224201, 'patrick.gray@aol.com', '4'),
('28', 'Julia', 'Barnett', NULL, '302 S 700 E', 'Salt Lake City', 'UT', 'USA', 84102, 18015319000, 18015319001, 'juliabarnett@gmail.com', '5'),
('29', 'Robert', 'Brown', NULL, '796 Dundas Street West', 'Toronto', 'ON', 'Canada', 6111, 14163633233, 14163633234, 'robbrown@shaw.ca', '3'),
('30', 'Edward', 'Francis', NULL, '230 Elgin Street', 'Ottawa', 'ON', 'Canada', 2117, 16132344555, 16132344556, 'edfrancis@yahoo.ca', '3'),
('31', 'Martha', 'Silk', NULL, '194A Albert Street', 'Regina', 'SK', 'Canada', 4225, 13067574888, 13067574889, 'martha.silk@gmail.com', '5'),
('32', 'Aaron', 'Mitchell', NULL, '696 Osborne Street', 'Winnipeg', 'MB', 'Canada', 3229, 12044526452, 12044526453, 'aaronmitchell@yahoo.ca', '4'),
('33', 'Ellie', 'Sullivan', NULL, '5112 48 Street', 'Yellowknife', 'NT', 'Canada', 116, 18679202233, 18679202234, 'ellie.sullivan@shaw.ca', '3'),
('34', 'João', 'Fernandes', NULL, 'Rua da Assunção 53', 'Lisbon', NULL, 'Portugal', 1100321, 351213466111, 351213466112, 'jfernandes@yahoo.pt', '3'),
('35', 'Madá', 'Melo', NULL, 'Rua dos Campeões 100', 'Porto', NULL, 'Portugal', 4000007, 351225024488, 351225024489, 'mada.melo@yahoo.com.br', '5'),
('36', 'Hannah', 'Schneider', NULL, 'Tauentzienstraße 8', 'Berlin', NULL, 'Germany', 10789, 490302149111, 490302149112, 'hannah.schneider@yahoo.de', '5'),
('37', 'Fynn', 'Zimmermann', NULL, 'Berger Straße 10', 'Frankfurt', NULL, 'Germany', 60316, 490694059888, 490694059889, 'fzimmermann@surfeu.de', '3'),
('38', 'Niklas', 'Schröder', NULL, 'Barbarossastraße 19', 'Berlin', NULL, 'Germany', 10779, 490302141444, 490302141445, 'nschroder@surfeu.de', '3'),
('39', 'Camille', 'Perrin', NULL, '4, rue du Marché 9', 'Dijon', NULL, 'France', 21000, 330380736699, 330380736698, 'camille.perrin@frenchice.fr', '3'),
('40', 'Dominique', 'Lefebvre', NULL, '8, rue du Faubourg Saint-Denis', 'Paris', NULL, 'France', 75010, 330142635050, 330142635051, 'dominique.lefebvre@gmail.com', '4'),
('41', 'Marc', 'Dubois', NULL, '11, rue Abel Hovelacque', 'Paris', NULL, 'France', 75013, 330145839000, 330145839001, 'marc.dubois@hotmail.com', '5'),
('42', 'Wyatt', 'Girard', NULL, '9, Place Louis Barthou', 'Bordeaux', NULL, 'France', 33000, 330556969696, 330556969697, 'wyatt.girard@yahoo.fr', '3'),
('43', 'Isabelle', 'Mercier', NULL, '68, rue La Boétie', 'Paris', NULL, 'France', 75008, 330142949494, 330142949495, 'isabelle_mercier@apple.fr', '4'),
('44', 'Terhi', 'Hämäläinen', NULL, 'Pohjantie 3', 'Helsinki', NULL, 'Finland', 100, 35809888111, 35809888112, 'terhi.hamalainen@apple.fi', '3'),
('45', 'Ladislav', 'Kovács', NULL, 'Kis Kisfaludy 6', 'Szeged', NULL, 'Hungary', 6721, 36204459277, 36204459278, 'ladislav_kovacs@apple.hu', '3'),
('46', 'Hugh', 'O\'Reilly', NULL, '3 Chatham Street', 'Dublin', 'Dublin', 'Ireland', 2, 353016792424, 353016792425, 'hugh.oreilly@apple.ie', '3'),
('47', 'Lucas', 'Mancini', NULL, 'Via Degli Scipioni, 43', 'Rome', NULL, 'Italy', 192, 390639733434, 390639733435, 'lucas.mancini@yahoo.it', '5'),
('48', 'Johannes', 'Van der Berg', NULL, 'Lijnbaansgracht 120bg', 'Amsterdam', NULL, 'Netherlands', 1016, 310206223135, 310206223136, 'johannes.vandenberg@live.nl', '5'),
('49', 'Stanisław', 'Wójcik', NULL, 'Ordynacka 10', 'Warsaw', NULL, 'Poland', 358, 48228285555, 48228285556, 'stanislaw.wojcik@wp.pl', '4'),
('50', 'Enrique', 'Muñoz', NULL, 'C/ San Bernardo 85', 'Madrid', NULL, 'Spain', 28015, 34914454455, 34914454456, 'enrique_munoz@yahoo.es', '3'),
('51', 'Joakim', 'Johansson', NULL, 'Celsiusg. 9', 'Stockholm', NULL, 'Sweden', 11230, 46086515250, 46086515251, 'joakim.johansson@yahoo.se', '5'),
('52', 'Emma', 'Jones', NULL, '202 Hoxton Street', 'London', NULL, 'United Kingdom', 15, 4402077380000, 4402077380001, 'emma.jones@hotmail.co.uk', '3'),
('53', 'Phil', 'Hughes', NULL, '113 Architects Road', 'London', NULL, 'United Kingdom', 111, 4402079786000, 4402079786001, 'phil.hughes@gmail.com', '3'),
('54', 'Steve', 'Murray', NULL, '110 Raeburn Place', 'Edinburgh', NULL, 'United Kingdom', 41, 4401314672222, 4401314672223, 'steve.murray@yahoo.co.uk', '5'),
('55', 'Mark', 'Taylor', NULL, '421 Bourke Street', 'Sidney', 'NSW', 'Australia', 2010, 610293323633, 610293323634, 'mark.taylor@yahoo.au', '4'),
('56', 'Diego', 'Gutiérrez', NULL, 'Pujades, 128', 'Barcelona', NULL, 'Spain', 8005, 34933192324, 34933192325, 'diego.gutierrez@yahoo.es', '4'),
('57', 'Luis', 'Rojas', NULL, 'Calle 12 #6-D-31', 'Bogota', NULL, 'Colombia', 110221, 5712351764, 5712351765, 'luis.rojas@yahoo.cl', '3'),
('58', 'Manoj', 'Pareek', NULL, '12, Chinnaswamy Stadium Road', 'Bangalore', NULL, 'India', 560001, 9108022223333, 9108022223334, 'manoj.pareek@rediffmail.com', '3'),
('59', 'Puja', 'Srivastava', NULL, '3/10 Shivaji Nagar', 'Pune', NULL, 'India', 411005, 9102025533333, 9102025533334, 'puja.srivastava@gmail.com', '3'),
('60', 'Rohan', 'Sharma', NULL, '15, Connaught Place', 'New Delhi', NULL, 'India', 110001, 9101123324444, 9101123324445, 'rohan.sharma@gmail.com', '4');


INSERT INTO media_type (media_type_id, name) VALUES
(1, 'MPEG audio file'),
(2, 'Protected AAC audio file'),
(3, 'Protected MPEG-4 video file'),
(4, 'Purchased AAC audio file'),
(5, 'AAC audio file');


INSERT INTO customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) VALUES
(18, 'FirstName_0', 'LastName_0', 'Company_0', '100 Main St', 'City_0', 'State_0', 'Country_0', 10000, 5550100, NULL, 'customer0@example.com', 5),
(30, 'FirstName_1', 'LastName_1', NULL, '101 Main St', 'City_1', 'State_1', 'Country_1', 10001, 5550101, NULL, 'customer1@example.com', 5),
(40, 'FirstName_2', 'LastName_2', NULL, '102 Main St', 'City_2', 'State_2', 'Country_2', 10002, 5550102, NULL, 'customer2@example.com', 4),
(27, 'FirstName_3', 'LastName_3', 'Company_3', '103 Main St', 'City_3', 'State_3', 'Country_0', 10003, 5550103, NULL, 'customer3@example.com', 9),
(31, 'FirstName_4', 'LastName_4', NULL, '104 Main St', 'City_4', 'State_4', 'Country_1', 10004, 5550104, NULL, 'customer4@example.com', 5),
(49, 'FirstName_5', 'LastName_5', NULL, '105 Main St', 'City_0', 'State_0', 'Country_2', 10005, 5550105, NULL, 'customer5@example.com', 1),
(59, 'FirstName_6', 'LastName_6', 'Company_6', '106 Main St', 'City_1', 'State_1', 'Country_0', 10006, 5550106, NULL, 'customer6@example.com', 7),
(38, 'FirstName_7', 'LastName_7', NULL, '107 Main St', 'City_2', 'State_2', 'Country_1', 10007, 5550107, NULL, 'customer7@example.com', 3),
(42, 'FirstName_8', 'LastName_8', NULL, '108 Main St', 'City_3', 'State_3', 'Country_2', 10008, 5550108, NULL, 'customer8@example.com', 6),
(35, 'FirstName_9', 'LastName_9', 'Company_9', '109 Main St', 'City_4', 'State_4', 'Country_0', 10009, 5550109, NULL, 'customer9@example.com', 5),
(25, 'FirstName_10', 'LastName_10', NULL, '110 Main St', 'City_0', 'State_0', 'Country_1', 10010, 55501010, NULL, 'customer10@example.com', 5),
(44, 'FirstName_11', 'LastName_11', NULL, '111 Main St', 'City_1', 'State_1', 'Country_2', 10011, 55501011, NULL, 'customer11@example.com', 3),
(1, 'FirstName_12', 'LastName_12', 'Company_12', '112 Main St', 'City_2', 'State_2', 'Country_0', 10012, 55501012, NULL, 'customer12@example.com', 1),
(20, 'FirstName_13', 'LastName_13', NULL, '113 Main St', 'City_3', 'State_3', 'Country_1', 10013, 55501013, NULL, 'customer13@example.com', 6),
(24, 'FirstName_14', 'LastName_14', NULL, '114 Main St', 'City_4', 'State_4', 'Country_2', 10014, 55501014, NULL, 'customer14@example.com', 4),
(10, 'FirstName_15', 'LastName_15', 'Company_15', '115 Main St', 'City_0', 'State_0', 'Country_0', 10015, 55501015, NULL, 'customer15@example.com', 3),
(43, 'FirstName_16', 'LastName_16', NULL, '116 Main St', 'City_1', 'State_1', 'Country_1', 10016, 55501016, NULL, 'customer16@example.com', 2),
(9, 'FirstName_17', 'LastName_17', NULL, '117 Main St', 'City_2', 'State_2', 'Country_2', 10017, 55501017, NULL, 'customer17@example.com', 8),
(53, 'FirstName_18', 'LastName_18', 'Company_18', '118 Main St', 'City_3', 'State_3', 'Country_0', 10018, 55501018, NULL, 'customer18@example.com', 3),
(4, 'FirstName_19', 'LastName_19', NULL, '119 Main St', 'City_4', 'State_4', 'Country_1', 10019, 55501019, NULL, 'customer19@example.com', 3),
(39, 'FirstName_20', 'LastName_20', NULL, '120 Main St', 'City_0', 'State_0', 'Country_2', 10020, 55501020, NULL, 'customer20@example.com', 9),
(55, 'FirstName_21', 'LastName_21', 'Company_21', '121 Main St', 'City_1', 'State_1', 'Country_0', 10021, 55501021, NULL, 'customer21@example.com', 3),
(12, 'FirstName_22', 'LastName_22', NULL, '122 Main St', 'City_2', 'State_2', 'Country_1', 10022, 55501022, NULL, 'customer22@example.com', 9),
(45, 'FirstName_23', 'LastName_23', NULL, '123 Main St', 'City_3', 'State_3', 'Country_2', 10023, 55501023, NULL, 'customer23@example.com', 4),
(46, 'FirstName_24', 'LastName_24', 'Company_24', '124 Main St', 'City_4', 'State_4', 'Country_0', 10024, 55501024, NULL, 'customer24@example.com', 2),
(3, 'FirstName_25', 'LastName_25', NULL, '125 Main St', 'City_0', 'State_0', 'Country_1', 10025, 55501025, NULL, 'customer25@example.com', 3),
(58, 'FirstName_26', 'LastName_26', NULL, '126 Main St', 'City_1', 'State_1', 'Country_2', 10026, 55501026, NULL, 'customer26@example.com', 7),
(33, 'FirstName_27', 'LastName_27', 'Company_27', '127 Main St', 'City_2', 'State_2', 'Country_0', 10027, 55501027, NULL, 'customer27@example.com', 7),
(34, 'FirstName_28', 'LastName_28', NULL, '128 Main St', 'City_3', 'State_3', 'Country_1', 10028, 55501028, NULL, 'customer28@example.com', 8),
(51, 'FirstName_29', 'LastName_29', NULL, '129 Main St', 'City_4', 'State_4', 'Country_2', 10029, 55501029, NULL, 'customer29@example.com', 5),
(37, 'FirstName_30', 'LastName_30', 'Company_30', '130 Main St', 'City_0', 'State_0', 'Country_0', 10030, 55501030, NULL, 'customer30@example.com', 4),
(50, 'FirstName_31', 'LastName_31', NULL, '131 Main St', 'City_1', 'State_1', 'Country_1', 10031, 55501031, NULL, 'customer31@example.com', 8),
(19, 'FirstName_32', 'LastName_32', NULL, '132 Main St', 'City_2', 'State_2', 'Country_2', 10032, 55501032, NULL, 'customer32@example.com', 2),
(22, 'FirstName_33', 'LastName_33', 'Company_33', '133 Main St', 'City_3', 'State_3', 'Country_0', 10033, 55501033, NULL, 'customer33@example.com', 4),
(21, 'FirstName_34', 'LastName_34', NULL, '134 Main St', 'City_4', 'State_4', 'Country_1', 10034, 55501034, NULL, 'customer34@example.com', 7),
(36, 'FirstName_35', 'LastName_35', NULL, '135 Main St', 'City_0', 'State_0', 'Country_2', 10035, 55501035, NULL, 'customer35@example.com', 4),
(57, 'FirstName_36', 'LastName_36', 'Company_36', '136 Main St', 'City_1', 'State_1', 'Country_0', 10036, 55501036, NULL, 'customer36@example.com', 9),
(26, 'FirstName_37', 'LastName_37', NULL, '137 Main St', 'City_2', 'State_2', 'Country_1', 10037, 55501037, NULL, 'customer37@example.com', 8),
(15, 'FirstName_38', 'LastName_38', NULL, '138 Main St', 'City_3', 'State_3', 'Country_2', 10038, 55501038, NULL, 'customer38@example.com', 9),
(52, 'FirstName_39', 'LastName_39', 'Company_39', '139 Main St', 'City_4', 'State_4', 'Country_0', 10039, 55501039, NULL, 'customer39@example.com', 3),
(47, 'FirstName_40', 'LastName_40', NULL, '140 Main St', 'City_0', 'State_0', 'Country_1', 10040, 55501040, NULL, 'customer40@example.com', 8),
(16, 'FirstName_41', 'LastName_41', NULL, '141 Main St', 'City_1', 'State_1', 'Country_2', 10041, 55501041, NULL, 'customer41@example.com', 6),
(2, 'FirstName_42', 'LastName_42', 'Company_42', '142 Main St', 'City_2', 'State_2', 'Country_0', 10042, 55501042, NULL, 'customer42@example.com', 6),
(13, 'FirstName_43', 'LastName_43', NULL, '143 Main St', 'City_3', 'State_3', 'Country_1', 10043, 55501043, NULL, 'customer43@example.com', 4),
(5, 'FirstName_44', 'LastName_44', NULL, '144 Main St', 'City_4', 'State_4', 'Country_2', 10044, 55501044, NULL, 'customer44@example.com', 2),
(48, 'FirstName_45', 'LastName_45', 'Company_45', '145 Main St', 'City_0', 'State_0', 'Country_0', 10045, 55501045, NULL, 'customer45@example.com', 7),
(32, 'FirstName_46', 'LastName_46', NULL, '146 Main St', 'City_1', 'State_1', 'Country_1', 10046, 55501046, NULL, 'customer46@example.com', 5),
(8, 'FirstName_47', 'LastName_47', NULL, '147 Main St', 'City_2', 'State_2', 'Country_2', 10047, 55501047, NULL, 'customer47@example.com', 3),
(17, 'FirstName_48', 'LastName_48', 'Company_48', '148 Main St', 'City_3', 'State_3', 'Country_0', 10048, 55501048, NULL, 'customer48@example.com', 4),
(54, 'FirstName_49', 'LastName_49', NULL, '149 Main St', 'City_4', 'State_4', 'Country_1', 10049, 55501049, NULL, 'customer49@example.com', 6),
(6, 'FirstName_50', 'LastName_50', NULL, '150 Main St', 'City_0', 'State_0', 'Country_2', 10050, 55501050, NULL, 'customer50@example.com', 4),
(28, 'FirstName_51', 'LastName_51', 'Company_51', '151 Main St', 'City_1', 'State_1', 'Country_0', 10051, 55501051, NULL, 'customer51@example.com', 2),
(29, 'FirstName_52', 'LastName_52', NULL, '152 Main St', 'City_2', 'State_2', 'Country_1', 10052, 55501052, NULL, 'customer52@example.com', 1),
(7, 'FirstName_53', 'LastName_53', NULL, '153 Main St', 'City_3', 'State_3', 'Country_2', 10053, 55501053, NULL, 'customer53@example.com', 6),
(14, 'FirstName_54', 'LastName_54', 'Company_54', '154 Main St', 'City_4', 'State_4', 'Country_0', 10054, 55501054, NULL, 'customer54@example.com', 9),
(11, 'FirstName_55', 'LastName_55', NULL, '155 Main St', 'City_0', 'State_0', 'Country_1', 10055, 55501055, NULL, 'customer55@example.com', 5),
(23, 'FirstName_56', 'LastName_56', NULL, '156 Main St', 'City_1', 'State_1', 'Country_2', 10056, 55501056, NULL, 'customer56@example.com', 6),
(41, 'FirstName_57', 'LastName_57', 'Company_57', '157 Main St', 'City_2', 'State_2', 'Country_0', 10057, 55501057, NULL, 'customer57@example.com', 2),
(56, 'FirstName_58', 'LastName_58', NULL, '158 Main St', 'City_3', 'State_3', 'Country_1', 10058, 55501058, NULL, 'customer58@example.com', 6);
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO playlist_track (playlist_id, track_id) VALUES ('1', '1568'), ('1', '3464'), ('1', '900'), ('1', '1778'), ('1', '217'), ('1', '38'), ('1', '2833'), ('1', '356'), ('1', '1349'), ('1', '2941'), ('1', '1498'), ('1', '1823'), ('2', '1387'), ('2', '3490'), ('2', '697'), ('2', '2195'), ('2', '1094'), ('2', '3312'), ('2', '2678'), ('2', '3329'), ('2', '3033'), ('3', '352'), ('3', '881'), ('3', '479'), ('3', '2550'), ('3', '2120'), ('3', '1398'), ('3', '1818'), ('3', '3271'), ('3', '2320'), ('3', '2589'), ('3', '2352'), ('3', '616'), ('4', '331'), ('4', '2627'), ('4', '930'), ('4', '1169'), ('4', '2077'), ('4', '1277'), ('4', '1369'), ('4', '2487'), ('4', '3119'), ('4', '1839'), ('4', '2003'), ('4', '2632'), ('4', '2065'), ('5', '1103'), ('5', '1240'), ('5', '408'), ('5', '2545'), ('5', '2102'), ('5', '2842'), ('5', '2950'), ('5', '1308'), ('5', '1009'), ('5', '2256'), ('5', '1539'), ('5', '2872'), ('6', '1697'), ('6', '3175'), ('6', '350'), ('6', '3365'), ('6', '627'), ('6', '2888'), ('6', '599'), ('6', '501'), ('6', '1329'), ('6', '2850'), ('6', '1994'), ('6', '3234'), ('6', '1148'), ('7', '1674'), ('7', '1693'), ('7', '361'), ('7', '2554'), ('7', '2149'), ('7', '565'), ('7', '1271'), ('7', '1276'), ('7', '3464'), ('7', '1715'), ('8', '2001'), ('8', '1572'), ('8', '3113'), ('8', '1805'), ('8', '23'), ('8', '3359'), ('8', '202'), ('8', '3319'), ('9', '3205'), ('9', '155'), ('9', '1436'), ('9', '1257'), ('9', '731'), ('9', '531'), ('9', '3313'), ('9', '366'), ('9', '3072'), ('9', '1058'), ('9', '447'), ('10', '307'), ('10', '3259'), ('10', '2976'), ('10', '1807'), ('10', '221'), ('10', '201'), ('10', '1311'), ('10', '2047'), ('10', '1365'), ('10', '3024'), ('11', '1801'), ('11', '489'), ('11', '1023'), ('11', '3071'), ('11', '1439'), ('11', '2705'), ('11', '1587'), ('11', '2059'), ('11', '1782'), ('11', '1148'), ('11', '915'), ('11', '375'), ('12', '212'), ('12', '749'), ('12', '829'), ('12', '3371'), ('12', '1526'), ('12', '740'), ('12', '2901'), ('12', '1859'), ('12', '2842'), ('12', '2192'), ('13', '1347'), ('13', '3081'), ('13', '717'), ('13', '2293'), ('13', '701'), ('13', '2352'), ('13', '1947'), ('14', '2917'), ('14', '471'), ('14', '2887'), ('14', '1058'), ('14', '3406'), ('14', '2350'), ('14', '2750'), ('14', '1940'), ('14', '190'), ('14', '3062'), ('14', '2227'), ('14', '2837'), ('14', '129'), ('14', '2217'), ('15', '704'), ('15', '3309'), ('15', '364'), ('15', '317'), ('15', '3219'), ('15', '1018'), ('16', '988'), ('16', '2540'), ('16', '1460'), ('16', '1031'), ('16', '18'), ('16', '956'), ('16', '2765'), ('16', '753'), ('16', '889'), ('16', '369'), ('17', '945'), ('17', '1478'), ('17', '1270'), ('17', '951'), ('17', '1273'), ('17', '30'), ('17', '338'), ('17', '747'), ('17', '241'), ('17', '3075'), ('18', '1379'), ('18', '2974'), ('18', '21'), ('18', '1972'), ('18', '1340'), ('18', '1197'), ('18', '3106'), ('18', '2216'), ('18', '2933'), ('18', '2174');

SET FOREIGN_KEY_CHECKS = 1;

delete from invoice_line ;
INSERT INTO invoice_line
(invoice_line_id, invoice_id, track_id, unit_price, quantity)
VALUES
(1, 1, 2532, 0.99, 1),
(2, 2, 2762, 0.99, 1),
(3, 2, 2166, 0.99, 1),
(4, 2, 3405, 0.99, 2),
(5, 2, 462, 0.99, 2),
(6, 3, 2069, 0.99, 1),
(7, 3, 3010, 0.99, 1),
(8, 4, 582, 0.99, 1),
(9, 4, 2629, 0.99, 1),
(10, 4, 515, 0.99, 2),
(11, 5, 2095, 0.99, 1),
(12, 5, 2595, 0.99, 1),
(13, 5, 452, 0.99, 1),
(14, 6, 505, 0.99, 1),
(15, 6, 2216, 0.99, 2),
(16, 6, 288, 0.99, 1),
(17, 6, 2280, 0.99, 2),
(18, 7, 1882, 0.99, 2),
(19, 8, 2582, 0.99, 2),
(20, 8, 2770, 0.99, 2),
(21, 9, 324, 0.99, 1),
(22, 9, 2771, 0.99, 1),
(23, 9, 858, 0.99, 1),
(24, 10, 3257, 0.99, 1),
(25, 10, 884, 0.99, 1),
(26, 11, 1140, 0.99, 1),
(27, 12, 567, 0.99, 2),
(28, 12, 2087, 0.99, 1),
(29, 13, 969, 0.99, 2),
(30, 14, 328, 0.99, 2),
(31, 14, 877, 0.99, 1),
(32, 15, 1624, 0.99, 2),
(33, 15, 2270, 0.99, 1),
(34, 15, 1521, 0.99, 2),
(35, 15, 910, 0.99, 1),
(36, 16, 1183, 0.99, 1),
(37, 16, 2775, 0.99, 1),
(38, 16, 2870, 1.99, 2),
(39, 16, 1979, 0.99, 1),
(40, 17, 1572, 0.99, 1),
(41, 17, 2739, 0.99, 2),
(42, 17, 2203, 0.99, 1),
(43, 17, 416, 0.99, 2),
(44, 18, 3207, 1.99, 1),
(45, 18, 301, 0.99, 1),
(46, 19, 1888, 0.99, 1),
(47, 19, 1424, 0.99, 2),
(48, 19, 2558, 0.99, 1),
(49, 20, 1871, 0.99, 1),
(50, 20, 423, 0.99, 2),
(51, 21, 628, 0.99, 1),
(52, 21, 2732, 0.99, 2),
(53, 22, 1715, 0.99, 2),
(54, 22, 100, 0.99, 2),
(55, 22, 513, 0.99, 2),
(56, 22, 653, 0.99, 1),
(57, 23, 3195, 1.99, 2),
(58, 23, 3497, 0.99, 1),
(59, 23, 2508, 0.99, 1),
(60, 23, 2785, 0.99, 2),
(61, 24, 1034, 0.99, 2),
(62, 24, 1895, 0.99, 1),
(63, 24, 2255, 0.99, 1),
(64, 24, 1014, 0.99, 1),
(65, 25, 1947, 0.99, 1),
(66, 26, 358, 0.99, 2),
(67, 26, 2004, 0.99, 1),
(68, 27, 2547, 0.99, 2),
(69, 27, 3293, 0.99, 2),
(70, 27, 2517, 0.99, 2),
(71, 27, 447, 0.99, 2),
(72, 28, 2026, 0.99, 1),
(73, 28, 1628, 0.99, 2),
(74, 29, 495, 0.99, 1),
(75, 30, 220, 0.99, 2),
(76, 30, 310, 0.99, 2),
(77, 30, 3471, 0.99, 1),
(78, 30, 199, 0.99, 2),
(79, 31, 836, 0.99, 1),
(80, 31, 2848, 1.99, 1),
(81, 31, 3291, 0.99, 2),
(82, 32, 2159, 0.99, 1),
(83, 32, 985, 0.99, 1),
(84, 32, 1070, 0.99, 2),
(85, 32, 745, 0.99, 1),
(86, 33, 516, 0.99, 2),
(87, 33, 998, 0.99, 2),
(88, 33, 894, 0.99, 2),
(89, 33, 1046, 0.99, 1),
(90, 34, 722, 0.99, 2),
(91, 35, 1799, 0.99, 1),
(92, 35, 557, 0.99, 1),
(93, 35, 860, 0.99, 2),
(94, 36, 1550, 0.99, 1),
(95, 37, 2853, 1.99, 2),
(96, 38, 1958, 0.99, 2),
(97, 38, 2028, 0.99, 2),
(98, 38, 1792, 0.99, 2),
(99, 38, 2287, 0.99, 1),
(100, 39, 1563, 0.99, 1),
('101', '616', '111', '0.99', '1'),
('102', '617', '112', '0.99', '1'),
('103', '618', '113', '0.99', '1'),
('104', '619', '114', '0.99', '1'),
('105', '620', '115', '0.99', '1'),
('106', '621', '116', '0.99', '1');

INSERT INTO invoice (invoice_id, customer_id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal, total) VALUES 
('616', '1', '2026-06-01 00:00:00', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', 0.99),
('617', '2', '2026-06-02 00:00:00', 'Theodor-Heuss-Straße 34', 'Stuttgart', NULL, 'Germany', '70174', 0.99),
('618', '3', '2026-06-03 00:00:00', '1498 rue Bélanger', 'Montréal', 'QC', 'Canada', '217', 0.99),
('619', '4', '2026-06-04 00:00:00', 'Ullevålsveien 14', 'Oslo', NULL, 'Norway', '0171', 0.99),
('620', '5', '2026-06-05 00:00:00', 'Klanova 9/506', 'Prague', NULL, 'Czech Republic', '14700', 0.99),
('621', '6', '2026-06-06 00:00:00', 'Rilská 3174/6', 'Prague', NULL, 'Czech Republic', '14300', 0.99);
