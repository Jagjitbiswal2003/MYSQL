-- index in sql
-- An index in SQL is a database object used to improve the speed of data retrieval operations on a table at the cost of additional space and 
-- slower write operations (such as INSERT, UPDATE, and DELETE)

-- syntax - create index index_name on table_name(column1,column2..);


use studentinfo;
-- Create the Netflix_Shows table
CREATE TABLE Netflix_Shows (
    show_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(100),
    release_year INT,
    rating VARCHAR(20),
    genre VARCHAR(50),
    duration VARCHAR(50),
    description TEXT
);

-- Insert sample data into the table
INSERT INTO Netflix_Shows (show_id, title, director, cast, country, release_year, rating, genre, duration, description)
VALUES
(1, 'Stranger Things', 'The Duffer Brothers', 'Winona Ryder, David Harbour, Finn Wolfhard', 'United States', 2016, 'TV-14', 'Sci-Fi', '3 Seasons', 'When a young boy disappears, his mother, a police chief, and his friends uncover a mystery involving secret experiments and supernatural forces.'),
(2, 'Breaking Bad', 'Vince Gilligan', 'Bryan Cranston, Aaron Paul, Anna Gunn', 'United States', 2008, 'TV-MA', 'Drama', '5 Seasons', 'A high school chemistry teacher turned methamphetamine producer teams up with a former student.'),
(3, 'The Witcher', 'Lauren Schmidt', 'Henry Cavill, Anya Chalotra, Freya Allan', 'United States', 2019, 'TV-MA', 'Fantasy', '2 Seasons', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world.'),
(4, 'Money Heist', 'Álex Pina', 'Úrsula Corberó, Álvaro Morte, Itziar Ituño', 'Spain', 2017, 'TV-MA', 'Crime', '5 Seasons', 'A criminal mastermind plans the biggest heist in history to print billions of euros at the Royal Mint of Spain.'),
(5, 'Narcos', 'Chris Brancato', 'Wagner Moura, Pedro Pascal, Boyd Holbrook', 'United States', 2015, 'TV-MA', 'Crime', '3 Seasons', 'The true story of Colombia’s infamously violent and powerful drug cartels.'),
(6, 'Black Mirror', 'Charlie Brooker', 'Various', 'United Kingdom', 2011, 'TV-MA', 'Sci-Fi', '5 Seasons', 'An anthology series exploring a twisted, high-tech world where humanity’s greatest innovations collide with its darkest instincts.'),
(7, 'The Crown', 'Peter Morgan', 'Claire Foy, Olivia Colman, Imelda Staunton', 'United Kingdom', 2016, 'TV-MA', 'Drama', '5 Seasons', 'This drama chronicles the reign of Queen Elizabeth II.'),
(8, 'Friends', NULL, 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'United States', 1994, 'TV-PG', 'Comedy', '10 Seasons', 'Six friends navigate life and love in New York.'),
(9, 'Dark', 'Baran bo Odar', 'Louis Hofmann, Karoline Eichhorn, Lisa Vicari', 'Germany', 2017, 'TV-MA', 'Sci-Fi', '3 Seasons', 'A family saga with a supernatural twist, set in a German town.'),
(10, 'The Office', NULL, 'Steve Carell, Rainn Wilson, John Krasinski', 'United States', 2005, 'TV-14', 'Comedy', '9 Seasons', 'A mockumentary on a group of typical office workers.'); 


select *from Netflix_Shows;


-- create index
CREATE INDEX idx_title
ON Netflix_Shows (title);

SELECT * FROM Netflix_Shows WHERE title = 'Stranger Things'; 

-- show index
show index from Netflix_Shows;

-- drop index
DROP INDEX idx_title ON  Netflix_Shows;



