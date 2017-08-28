

CREATE TABLE Ltodos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(225) NOT NULL,
  details VARCHAR(1000),
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP  NOT NULL,
  completed_at TIMESTAMP
  );

  INSERT INTO Ltodos (title, details, priority, created_at) VALUES
    ('walk dog', 'walk at least 15 min', 9, CURRENT_TIMESTAMP),
    ('get groceries', 'milk, eggs, bacon', 4, CURRENT_TIMESTAMP),
    ('go to gym', 'get gym bag from house', 2, CURRENT_TIMESTAMP),
    ('return redbox', 'get movie from house', 1, CURRENT_TIMESTAMP),
    ('pick up clothes from dry cleaner','5 shirts', 2, CURRENT_TIMESTAMP);

INSERT INTO Ltodos (title, details, priority, created_at, completed_at) VALUES
('go run', 'bring shoes', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

SELECT * from Ltodos WHERE completed_at IS NULL;

SELECT title from Ltodos WHERE priority > 1;

UPDATE Ltodos SET completed_at = CURRENT_TIMESTAMP WHERE id = 2;

DELETE FROM LTODOS WHERE COMPLETED_AT IS NOT NULL;

select * from Ltodos ;
