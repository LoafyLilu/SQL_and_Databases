CREATE DATABASE Library

USE Library

---Creating tables, their columns, and primary keys --

CREATE TABLE LIBRARY_BRANCH (
    BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    BranchName VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,

);

CREATE TABLE BOOK_COPIES (
    Number_Of_Copies INT NOT NULL,
	BookID INT NOT NULL,
	BranchID INT NOT NULL
);

CREATE TABLE BOOKS (
    BookID INT PRIMARY KEY NOT NULL IDENTITY (100, 1),
    Title VARCHAR(50) NOT NULL,
    PublisherName VARCHAR(50) 
);

CREATE TABLE BOOK_AUTHORS (
    BookID INT NOT NULL,
    AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE BORROWER (
    CardNo INT PRIMARY KEY NOT NULL IDENTITY (300,1),
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(60) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

CREATE TABLE BOOK_LOANS (
    BookID INT NOT NULL,
    BranchID INT NOT NULL,
    CardNo INT NOT NULL,
    DateOut DATE NOT NULL,
    DateDue DATE NOT NULL
);

CREATE TABLE PUBLISHER (
    PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

------Adding foreign key assignments to tables --
ALTER TABLE BOOK_COPIES
ADD FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH(BranchID);
---------------------------
ALTER TABLE BOOK_COPIES
ADD FOREIGN KEY (BookID) REFERENCES BOOKS(BookID);
-----------------
ALTER TABLE BOOKS
ADD FOREIGN KEY (PublisherName) REFERENCES PUBLISHER(PublisherName);
--------------------------------
ALTER TABLE BOOK_AUTHORS
ADD FOREIGN KEY (BookID) REFERENCES BOOKS(BookID);
---------------
ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (BookID) REFERENCES BOOKS(BookID);

ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH(BranchID);

ALTER TABLE BOOK_LOANS
ADD FOREIGN KEY (CardNo) REFERENCES BORROWER(CardNo);
-------------------------

SELECT * FROM LIBRARY_BRANCH ;
SELECT * FROM BOOK_COPIES;
SELECT * FROM BOOKS;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM BORROWER;
SELECT * FROM BOOK_LOANS;
SELECT * FROM PUBLISHER;
------------------------------------------


    INSERT INTO LIBRARY_BRANCH
    (BranchName, BranchAddress)
    VALUES
    ('Janesville', '505 E. 1st st, Janesville WI 53545'),
    ('Beloit', '1234 W. Industry Blvd, Beloit WI 53511'),
    ('Madison', '7768 Hospital Way, Madison WI 53597'),
    ('Madison CENTRAL', '8415 Superbusy St Madison WI 53794')
    ('Milwaukee', '4242 Easy St #2, Milwaukee WI 53204'),
    ('Milwaukee WEST', '1616 Cheesehead Ave, Milwaukee WI 53218'),
    ('Sharpstown', '31844 MoarCheese Drive Sharpstown WI 54935');


    INSERT INTO BORROWER
    (Name, Address, Phone)
    VALUES
    ('Billy Bob', '1234 Wooptydoo Way Janesville WI 53545', '608-234-9875'),
    ('Mary Jane', '4577 Doodlydoo Drive Janesville WI 53545', '608-784-9325'),
    ('Martin Reggistar', '76884 Humanitatian Way Madison WI 53597', '608-564-9834'),
    ('Amy Due', '6483 Blahblah Ave Madison WI 53545', '608-234-9875'),
    ('Gabe Parker', '1755 Wooptydoo Way Janesville WI 53545', '920-874-9729'),
    ('Charissa Day', '7288 Bestest Way Milwaukee WI 53218', '608-234-9875'),
    ('Allen Daily', '1455 SpeakEasy Drive Milwaukee WI 53545', '414-224-2575'),
    ('Emily Thompson', '99587 Main st Sharpstown WI 12345', '414-874-2375');

    INSERT INTO PUBLISHER
    (PublisherName, Address, Phone)
    VALUES
    ('Panda Publishing', '1234 Physics Way Ft Meyers FL 83756', '746-264-9967'),
    ('Kitsune Books', '6639 Darkness Drive Indianapolis IN 43452', '812-345-9876'),
    ('Turtle Books', '1234 UnderaRock Ave, WhoCares UK', '372-111-4725'),
    ('FireInside Publishing', '666 Devils Venom Drive Austin TX 88265', '726-998-1543'),
    ('Watercolor Books', '4242 Watercolor Way Columbus OH 72554', '640-882-8356'),
    ('Neverending Texts', '2284 Deep Sea Ct Seaside OR 97214', '503-761-9385'),
    ('Bluebird Books', '1313 Garbageo Way Bloomington IN 47042', '827-887-8266'),
    ('Spooky Stories', '1324 Fireway Drive Somewhere CA 89766', '726-998-9277'),
    ('SandySmithPresents', '7388 Lockward Way Bedford IN 62538', '836-889-1437'),
    ('In Todays News', '1700 Somewhere Ct Tampa FL', '827-882-9464')
    ;
    

    
    INSERT INTO BOOKS
    (Title, PublisherName)
    VALUES
    ('Lessons in Chemistry', 'Kitsune Books'),
    ('Things we Hide from the Light', 'FireInside Publishing'),
    ('Harry Potter and the Sorcerers Stone', 'Bluebird Books'),
    ('Harry Potter and the Order of the Phenoix', 'Bluebird Books'),
    ('Harry Potter and the Goblet of Fire', 'Bluebird Books'),
    ('Demon Copperhead', 'FireInside Publishing'),
    ('It Ends with Us', 'FireInside Publishing'),
    ('Things We Never Got Over', 'Spooky Stories'),
    ('Harry Potter and the Deathly Hallows', 'Bluebird Books'),
    ('The Lost Tribe', 'Panda Publishing'),
    ('Harry Potter and the Prisoner of Azkaban', 'Bluebird Books'),
    ('Tomorrow, and Tomorrow...', 'Turtle Books'),
    ('Harry Potter and the Chamber of Secrets', 'Bluebird Books'),
    ('The Perfect Marriage', 'In Todays News'),
    ('Fairy Tale', 'Kitsune Books'),
    ('It Starts with Us', 'FireInside Publishing'),
    ('The Hosuemaids Secret', 'Watercolor Books'),
    ('The Boys from Biloxi', 'SandySmithPresents'),
    ('The Housemaid', 'Neverending Texts'),
    ('Mad Honey', 'Turtle Books')
    ;

    INSERT INTO BOOK_AUTHORS
    (BookID , AuthorName)
    VALUES
    (122, 'Bonnie Garmus'),
    (123, 'Lucy Score'),
    (124, 'J.K Rowling')
    (125, 'J.K Rowling'),
    (126, 'J.K Rowling'),
    (127, 'Barbara Kingsolver'),
    (128, 'Colleen Hoover'),
    (129, 'Lucy Score'),
    (130, 'J.K Rowling'),
    (131, 'Unknown Author'),
    (132, 'J.K Rowling'),
    (133, 'Gabrielle Zevin'),
    (134, 'J.K Rowling'),
    (135, 'Jeneva Rose'),
    (136, 'Stephen King'),
    (137, 'Colleen Hoover'),
    (138, 'Freida McFadden'),
    (139, 'John Grisham'),
    (140, 'Freida McFadden'),
    (141, 'Jodi Picoult')
    ;

    INSERT INTO BOOK_COPIES
    (Number_Of_Copies, BookID, BranchID)
    VALUES
    ( 5, 122 , 1),
    ( 3, 122 , 2),
    ( 2, 122 , 3),
    ( 7, 122 , 4),
    ( 2, 122 , 5),
    ( 3, 122 , 6),
    ( 5, 122 , 7),
    ( 2, 123 , 1),
    ( 2, 123 , 2),
    ( 3, 123 , 3),
    ( 7, 123 , 4),
    ( 7, 123 , 5),
    ( 2, 123 , 6),
    ( 3, 123 , 7),
    ( 5, 124 , 1),
    ( 2, 124 , 2),
    ( 4, 124 , 3),
    ( 6, 124 , 4),
    ( 3, 124 , 5),
    ( 7, 124 , 6),
    ( 2, 124 , 7),
    ( 2, 125 , 1),
    ( 5, 125 , 2),
    ( 6, 125 , 3),
    ( 3, 125 , 4),
    ( 7, 125 , 5),
    ( 8, 125 , 6),
    ( 2, 125 , 7),
    ( 2, 126 , 1),
    ( 6, 126 , 2),
    ( 3, 126 , 3),
    ( 7, 126 , 4),
    ( 2, 126 , 5),
    ( 2, 126 , 6),
    ( 5, 126 , 7),
    ( 2, 127 , 1),
    ( 5, 127 , 2),
    ( 6, 127 , 3),
    ( 2, 127 , 4),
    ( 5, 127 , 5),
    ( 8, 127 , 6),
    ( 2, 127 , 7),
    ( 3, 128 , 1),
    ( 5, 128 , 2),
    ( 3, 128 , 3),
    ( 9, 128 , 4),
    ( 4, 128 , 5),
    ( 8, 128 , 6),
    ( 2, 128 , 7),
    ( 4, 129 , 1),
    ( 5, 129 , 2),
    ( 4, 129 , 3),
    ( 7, 129 , 4),
    ( 2, 129 , 5),
    ( 8, 129 , 6),
    ( 4, 129 , 7),
    ( 3, 130 , 1),
    ( 2, 130 , 2),
    ( 2, 130 , 3),
    ( 8, 130 , 4),
    ( 5, 130 , 5),
    ( 2, 130 , 6),
    ( 6, 130 , 7),
    ( 6, 131 , 1),
    ( 5, 131 , 2),
    ( 7, 131 , 3),
    ( 8, 131 , 4),
    ( 3, 131 , 5),
    ( 4, 131 , 6),
    ( 2, 131 , 7),
    ( 6, 132 , 1),
    ( 2, 132 , 2),
    ( 2, 132 , 3),
    ( 8, 132 , 4),
    ( 4, 132 , 5),
    ( 3, 132 , 6),
    ( 7, 132 , 7),
    ( 2, 133 , 1),
    ( 2, 133 , 2),
    ( 5, 133 , 3),
    ( 7, 133 , 4),
    ( 4, 133 , 5),
    ( 8, 133 , 6),
    ( 2, 133 , 7),
    ( 6, 134 , 1),
    ( 5, 134 , 2),
    ( 2, 134 , 3),
    ( 2, 134 , 4),
    ( 2, 134 , 5),
    ( 8, 134 , 6),
    ( 9, 134 , 7),
    ( 3, 135 , 1),
    ( 2, 135 , 2),
    ( 7, 135 , 3),
    ( 9, 135 , 4),
    ( 2, 135 , 5),
    ( 2, 135 , 6),
    ( 6, 135 , 7),
    ( 3, 136 , 1),
    ( 6, 136 , 2),
    ( 2, 136 , 3),
    ( 8, 136 , 4),
    ( 3, 136 , 5),
    ( 2, 136 , 6),
    ( 7, 136 , 7),
    ( 6, 137 , 1),
    ( 2, 137 , 2),
    ( 4, 137 , 3),
    ( 8, 137 , 4),
    ( 3, 137 , 5),
    ( 6, 137 , 6),
    ( 9, 137 , 7),
    ( 2, 138 , 1),
    ( 2, 138 , 2),
    ( 7, 138 , 3),
    ( 3, 138 , 4),
    ( 6, 138 , 5),
    ( 3, 138 , 6),
    ( 7, 138 , 7),
    ( 5, 139 , 1),
    ( 2, 139 , 2),
    ( 2, 139 , 3),
    ( 4, 139 , 4),
    ( 7, 139 , 5),
    ( 8, 139 , 6),
    ( 2, 139 , 7),
    ( 4, 140 , 1),
    ( 2, 140 , 2),
    ( 2, 140 , 3),
    ( 5, 140 , 4),
    ( 8, 140 , 5),
    ( 9, 140 , 6),
    ( 3, 140 , 7),
    ( 4, 141 , 1),
    ( 2, 141 , 2),
    ( 5, 141 , 3),
    ( 7, 141 , 4),
    ( 3, 141 , 5),
    ( 3, 141 , 6),
    ( 2, 141 , 7)
    ;

    INSERT INTO BOOK_LOANS
    (BookID, BranchID, CardNo, DateOut, DateDue)
    VALUES
    ( 122, 1, 300, '2023-02-28', '2023-03-14'),
    ( 141, 1, 307, '2023-02-17', '2023-03-03'),
    ( 128, 2, 301, '2023-01-30', '2023-02-12'),
    ( 137, 3, 302, '2023-02-14', '2023-02-28'),
    ( 134, 3, 303, '2023-02-12', '2023-02-26'),
    ( 135, 4, 304, '2023-02-12', '2023-02-26'),
    ( 129, 5, 304, '2023-02-22', '2023-03-08'),
    ( 123, 6, 304, '2023-03-01', '2023-03-15'),
    ( 127, 6, 305, '2023-02-27', '2023-03-13'),
    ( 134, 7, 305, '2023-02-02', '2023-02-16'),
    ( 140, 7, 306, '2023-02-05', '2030-02-19')
    ;


SELECT * FROM ((BOOK_LOANS FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo =
BORROWER.CardNo) FULL OUTER JOIN BOOKS ON BOOK_LOANS.BookID = BOOKS.BookID);

--Create query that returns all book titles and author names --

--Create a stored procedures for each question--
-- How many copies of "The Lost Tribe" are owned by the Library Branch 'Sharpstown'?--
--How many copies of "The Lost Tribe" are owned by each library branch?--
--Retrive the names of all borrowers who do not have any books checked out -- 




    
   
    

