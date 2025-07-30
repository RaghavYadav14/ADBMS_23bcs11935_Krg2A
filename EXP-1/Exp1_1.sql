
CREATE TABLE Authors (
  WriterID INT PRIMARY KEY,
  FullName VARCHAR(50),
  Region VARCHAR(100)
);


CREATE TABLE Books (
  PubID INT PRIMARY KEY,
  BookTitle VARCHAR(50),
  WriterID INT,
  YearReleased INT,
  CONSTRAINT fk_writer_book FOREIGN KEY (WriterID) REFERENCES Authors(WriterID)
);


INSERT INTO Authors (WriterID, FullName, Region) VALUES
(201, 'Rohan', 'India'),
(202, 'Elena', 'Canada'),
(203, 'Sam', 'Germany');


INSERT INTO Books (PubID, BookTitle, WriterID, YearReleased) VALUES
(3001, 'Cognitive Depth', 201, 2020),
(3002, 'Shadows of Code', 202, 2021),
(3003, 'Zero Day Mindset', 201, 2022),
(3004, 'Logic Breaker', 201, 2021),
(3005, 'Quantum Syntax', 203, 2023),
(3006, 'Runtime Diaries', 203, 2022),
(3007, 'Infinite Stack', 202, 2020);


SELECT B.PubID,B.BookTitle,B.YearReleased,A.FullName AS WriterName,A.Region
FROM Books B
JOIN Authors A ON 
B.WriterID = A.WriterID;
