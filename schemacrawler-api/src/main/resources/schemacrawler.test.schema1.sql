CREATE TABLE Publishers
(
  Id INTEGER NOT NULL,
  Publisher VARCHAR(255),
  CONSTRAINT PK_Publishers PRIMARY KEY (Id)
)
;

CREATE TABLE Authors
(
  Id INTEGER NOT NULL,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(20) NOT NULL,
  Address1 VARCHAR(255),
  Address2 VARCHAR(255),
  City VARCHAR(50),
  State VARCHAR(2),
  PostalCode VARCHAR(10),
  Country VARCHAR(50),
  CONSTRAINT PK_Authors PRIMARY KEY (Id),
  CONSTRAINT CHECK_UPPERCASE_State CHECK (State=UPPER(State))
)
;

CREATE TABLE Books
(
  Id INTEGER NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Description VARCHAR(255),
  PublisherId INTEGER NOT NULL,
  PublicationDate DATE,
  Price FLOAT,
  CONSTRAINT PK_Books PRIMARY KEY (Id)
)
;

CREATE TABLE BookAuthors
(
  BookId INTEGER NOT NULL,
  AuthorId INTEGER NOT NULL,
  "UPDATE" INTEGER,
  CONSTRAINT FK_Y_Book FOREIGN KEY (BookId) REFERENCES Books (Id),
  CONSTRAINT FK_Z_Author FOREIGN KEY (AuthorId) REFERENCES Authors (Id)
)
;

CREATE TABLE GlobalCount
(
  "Global Count" INTEGER
)
;

-- Views
CREATE VIEW AuthorsList AS SELECT Id, FirstName, LastName FROM Authors
;

-- Indices
CREATE UNIQUE INDEX UIDX_BookAuthors ON BookAuthors(BookId, AuthorId)
;
CREATE INDEX IDX_B_Authors ON Authors(LastName, FirstName)
;
CREATE INDEX IDX_A_Authors ON Authors(City, State, PostalCode, Country)
;

-- Data

INSERT INTO Publishers (Id,Publisher) VALUES (1,'Dalton Lewis');
INSERT INTO Publishers (Id,Publisher) VALUES (2,'Macaulay Bryant');
INSERT INTO Publishers (Id,Publisher) VALUES (3,'Nash Fox');
INSERT INTO Publishers (Id,Publisher) VALUES (4,'Leonard Bradshaw');
INSERT INTO Publishers (Id,Publisher) VALUES (5,'Brendan Kramer');
INSERT INTO Publishers (Id,Publisher) VALUES (6,'Tobias Mosley');
INSERT INTO Publishers (Id,Publisher) VALUES (7,'Zachary Tate');
INSERT INTO Publishers (Id,Publisher) VALUES (8,'Derek Lee');
INSERT INTO Publishers (Id,Publisher) VALUES (9,'Neil Tyson');
INSERT INTO Publishers (Id,Publisher) VALUES (10,'Shad Robinson');
INSERT INTO Publishers (Id,Publisher) VALUES (11,'Justin Schroeder');
INSERT INTO Publishers (Id,Publisher) VALUES (12,'Leonard Atkinson');
INSERT INTO Publishers (Id,Publisher) VALUES (13,'Hyatt Caldwell');
INSERT INTO Publishers (Id,Publisher) VALUES (14,'Neil Fletcher');
INSERT INTO Publishers (Id,Publisher) VALUES (15,'Ferdinand Tucker');
INSERT INTO Publishers (Id,Publisher) VALUES (16,'Barrett Mclaughlin');
INSERT INTO Publishers (Id,Publisher) VALUES (17,'Hayden Potts');
INSERT INTO Publishers (Id,Publisher) VALUES (18,'Neville Cardenas');
INSERT INTO Publishers (Id,Publisher) VALUES (19,'Allistair Gilbert');
INSERT INTO Publishers (Id,Publisher) VALUES (20,'Cooper Chapman');

INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (1,'Oren','Shaffer','900-2273 Integer Avenue','','Farmer City','MD','37032','Cook Islands');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (2,'Octavia','Burke','955-7635 Natoque St.','','Kalispell','MS','66863','Cape Verde');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (3,'Aiko','Stafford','Ap #554-7132 Dictum Street','','Kankakee','ID','59675','Brunei Darussalam');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (4,'Christine','Aguilar','Ap #698-4255 Sodales Av.','','Riverton','MA','24828','Ghana');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (5,'Kenneth','Curry','P.O. Box 305, 8335 Cras St.','','Somersworth','ME','36619','Kazakhstan');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (6,'Lillian','Nieves','P.O. Box 827, 1923 Ornare Avenue','','Sierra Vista','MA','12684','Mali');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (7,'Damian','Donaldson','5047 Eu Rd.','','LaGrange','UT','64681','Thailand');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (8,'Jordan','Woodward','Ap #486-6702 Iaculis Road','','Glen Cove','OH','18011','Libyan Arab Jamahiriya');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (9,'Adele','Holmes','7585 Magna. Ave','','Villa Park','ME','00619','Cayman Islands');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (10,'Jillian','Mckee','1185 Per Ave','','Rapid City','LA','11671','New Caledonia');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (11,'Mikayla','Knight','Ap #375-6798 Auctor St.','','Sault Ste. Marie','CO','26558','Lesotho');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (12,'Denise','Dominguez','324-4875 Vitae Av.','','Hudson','SD','41933','Russian Federation');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (13,'Ira','Dunn','8869 Velit Rd.','','Lincoln','IA','74182','Zambia');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (14,'Elvis','Blevins','Ap #629-9258 In St.','','Abilene','WY','19269','Saint Vincent and The Grenadines');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (15,'Theodore','Gilliam','6293 Enim, Ave','','Baltimore','UT','86549','Saudi Arabia');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (16,'Jared','White','P.O. Box 806, 6212 Adipiscing, Road','','Thibodaux','KS','90172','China');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (17,'Melyssa','Willis','Ap #467-9359 Ipsum Rd.','','Roanoke','OH','45706','Niger');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (18,'Hilary','Marks','Ap #361-1093 Vitae Street','','Fort Lauderdale','ID','10855','Venezuela');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (19,'Frances','Ellis','Ap #458-4569 Sem. Ave','','Durham','MS','50037','Gambia');
INSERT INTO Authors (Id,FirstName,LastName,Address1,Address2,City,State,PostalCode,Country) VALUES (20,'Lenore','Cooley','P.O. Box 937, 3415 Nulla Ave','','Half Moon Bay','OR','51967','Canada');

INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (1,'Neque. In Ornare Sagittis','Dis Parturient Montes, Nascetur Ridiculus Mus.',18,{d '2000-10-27'},69.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (2,'Duis Dignissim Tempor Arcu.','Eu, Euismod Ac, Fermentum Vel,',20,{d '2002-05-09'},27.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (3,'Lacinia Orci, Consectetuer Euismod Est','Sem Ut Cursus Luctus, Ipsum Leo Elementum Sem, Vitae Aliquam Eros Turpis Non Enim.',15,{d '2006-04-14'},37.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (4,'Vitae Sodales','Rhoncus. Nullam Velit Dui, Semper Et, Lacinia Vitae, Sodales At,',1,{d '2007-05-21'},64.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (5,'Posuere Cubilia Curae; Phasellus Ornare.','Risus A Ultricies Adipiscing, Enim Mi Tempor Lorem, Eget Mollis Lectus Pede',7,{d '2010-05-14'},83.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (6,'Tincidunt Aliquam Arcu.','Tristique Pellentesque, Tellus Sem Mollis Dui,',13,{d '2009-07-17'},31.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (7,'Auctor Quis, Tristique','Vel, Faucibus Id, Libero. Donec Consectetuer Mauris Id Sapien. Cras Dolor Dolor, Tempus Non, Lacinia',7,{d '1999-06-09'},76.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (8,'Sem. Nulla Interdum. Curabitur','Turpis. Nulla Aliquet. Proin Velit. Sed Malesuada Augue Ut',7,{d '2009-01-24'},30.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (9,'Lobortis Ultrices. Vivamus Rhoncus.','Est, Mollis Non, Cursus Non, Egestas A, Dui. Cras Pellentesque. Sed Dictum.',1,{d '2004-06-25'},69.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (10,'Quisque Purus Sapien, Gravida','Et Ultrices Posuere Cubilia Curae; Phasellus Ornare. Fusce Mollis. Duis Sit Amet Diam Eu Dolor Egestas Rhoncus.',19,{d '2005-11-14'},34.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (11,'Phasellus','Egestas. Duis Ac Arcu. Nunc Mauris.',5,{d '2003-10-19'},89.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (12,'Non Massa Non','Est Mauris, Rhoncus Id, Mollis',5,{d '2002-05-04'},64.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (13,'Gravida Mauris Ut Mi. Duis','Fusce Mollis. Duis Sit Amet Diam Eu Dolor Egestas Rhoncus. Proin Nisl Sem, Consequat Nec,',8,{d '2005-08-03'},25.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (14,'Auctor Vitae,','Suspendisse Dui. Fusce Diam Nunc, Ullamcorper Eu, Euismod Ac, Fermentum Vel, Mauris. Integer Sem Elit, Pharetra',2,{d '2009-02-09'},84.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (15,'Ultrices Posuere Cubilia','Elit, Pellentesque A, Facilisis Non, Bibendum Sed, Est. Nunc Laoreet Lectus Quis Massa. Mauris Vestibulum, Neque Sed',20,{d '2001-08-28'},77.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (16,'Vitae, Aliquet Nec, Imperdiet','Cursus Purus. Nullam',6,{d '2003-08-30'},47.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (17,'Parturient Montes, Nascetur Ridiculus','Ornare, Lectus Ante Dictum Mi, Ac Mattis Velit Justo Nec Ante. Maecenas Mi Felis, Adipiscing Fringilla, Porttitor Vulputate, Posuere Vulputate,',17,{d '2005-06-24'},36.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (18,'Lacus. Etiam Bibendum','Facilisi. Sed Neque. Sed',18,{d '2008-01-28'},63.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (19,'Luctus Lobortis.','Rutrum. Fusce Dolor Quam, Elementum At, Egestas A, Scelerisque Sed, Sapien.',5,{d '2006-08-23'},67.99);
INSERT INTO Books (Id,Title,Description,Publisherid,Publicationdate,Price) VALUES (20,'Dui, In Sodales Elit Erat','Sociis Natoque Penatibus Et Magnis Dis Parturient',5,{d '2002-09-29'},43.99);

INSERT INTO BookAuthors (BookId,AuthorId) VALUES (1,7);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (2,4);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (2,6);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (3,1);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (3,4);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (3,5);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (3,6);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (4,9);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (5,7);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (5,5);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (6,8);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (6,1);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (7,9);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (7,8);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (8,6);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (9,7);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (9,3);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (9,6);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (10,1);
INSERT INTO BookAuthors (BookId,AuthorId) VALUES (10,9);