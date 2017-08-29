

CREATE TABLE Listodos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(225) NOT NULL,
  details VARCHAR(1000),
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIME  NOT NULL,
  completed_at TIMESTAMP
  );

  INSERT INTO Listodos (title, details, priority, created_at) VALUES
    ('walk dog', 'walk at least 15 min', 9, 2017-08-28 13:14:51.425171 ),
    ('get groceries', 'milk, eggs, bacon', 4, CURRENT_TIMESTAMP),
    ('go to gym', 'get gym bag from house', 2, CURRENT_TIMESTAMP),
    ('return redbox', 'get movie from house', 1, CURRENT_TIMESTAMP),
    ('pick up clothes from dry cleaner','5 shirts', 2, CURRENT_TIMESTAMP);

INSERT INTO Listodos (title, details, priority, created_at, completed_at) VALUES
('go run', 'bring shoes', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

SELECT * from Listodos WHERE completed_at IS NULL;

SELECT title from Listodos WHERE priority > 1;

UPDATE Listodos SET completed_at = CURRENT_TIMESTAMP WHERE id = 2;

DELETE FROM ListTODOS WHERE COMPLETED_AT IS NOT NULL;

select * from Listodos ;
