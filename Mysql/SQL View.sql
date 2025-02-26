-- SQL View - it is a virtual table created by fetching data from one or more table by a sql query
-- Syntax - CREATE VIEW view_name AS SELECT column1, column2, ...FROM table_name WHERE condition;

use studentinfo;

CREATE TABLE Project1 (
    ProjectID INT NOT NULL,               
    ProjectName VARCHAR(255) NULL,       
    ProjectDescription TEXT NULL,        
    StartDate DATE NULL,                  
    EndDate DATE NULL,                   
    PRIMARY KEY (ProjectID)
);

INSERT INTO Project1 (ProjectID, ProjectName, ProjectDescription, StartDate, EndDate)
VALUES
    (1, 'Neural Network Project', 'A project on neural networks and deep learning', '2025-01-16', '2025-12-31'),
    (2, 'Web Development', 'Web Project', '2025-02-01', '2025-04-06'),
    (3, 'Mobile App Development', 'Mobile Project', '2026-03-02','2026-07-09' ),
    (4, 'AI Research', 'Artificial Intelligence research project', '2025-03-01', '2025-12-01'),
    (5, 'E-commerce Website', 'Developing a responsive e-commerce website', '2024-03-02', '2023-01-02');



select *from project1;


-- here i only want to show project_id and project_name to the coustomer not all details
create view projectviews as select ProjectID,ProjectName,ProjectDescription from project1; 

select *from projectviews;

-- perform insert,delete,update in view
INSERT INTO  projectviews (ProjectID,ProjectName,ProjectDescription)
VALUES (6,'MachineLearning Project', 'Deep Network');

-- update
update projectviews set ProjectDescription = 'Neural Network' where ProjectID = 6;

-- delete
delete from projectviews where ProjectID = 6;

-- drop a view
drop view projectview;