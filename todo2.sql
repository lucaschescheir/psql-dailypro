-- CREATE TABLE todoslist2 (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(225) NOT NULL,
--   details VARCHAR(1000),
--   priority INTEGER NOT NULL DEFAULT 1,
--   created_at TIME  NOT NULL,
--   completed_at TIMESTAMP
--   );

-- INSERT INTO todoslist2 (title, details, priority, created_at) VALUES
-- ('go to park', 'bring blanket', 12, CURRENT_TIMESTAMP),
-- ('pay water bill','$197.87',3, CURRENT_TIMESTAMP),
-- ('pay electric bill','$240.87',7, CURRENT_TIMESTAMP),
-- ('pay gas bill','$90.76', 9, CURRENT_TIMESTAMP),
-- ('pay gym membership','$45.00',13, CURRENT_TIMESTAMP);

-- insert into todoslist2 (title, details, priority, created_at, completed_at) VALUES
--   ('go to pet store', 'get dog food', 2, '11:45', CURRENT_TIMESTAMP),
--   ('to homework','math homework',18, '12:56', CURRENT_TIMESTAMP),
--   ('watch tv','1 hr tv break',14, '12:49', CURRENT_TIMESTAMP),
-- ('go to post office','drop off mail for dad',19, '10:46', CURRENT_TIMESTAMP),
-- ('go to park','run for 1 hr',12, '19:36', CURRENT_TIMESTAMP),
-- ('go to school','drop off homework',5, '18:27', CURRENT_TIMESTAMP),
-- ('go to corner store','pick up energy drink',7, '17:16', CURRENT_TIMESTAMP),
-- ('pick up dog from Vet','pick up at 11:56pm',8, '18:39', CURRENT_TIMESTAMP),
-- ('take a nap','naptime',9, '14:42', CURRENT_TIMESTAMP),
-- ('go to liquor store','get beer',2, '17:53', CURRENT_TIMESTAMP);
-- INSERT INTO todoslist2 (title, details, priority, created_at) VALUES
-- ('study for school', 'javascript', 12, '6:34'),
-- ('study for test', 'math test', 1, '8:45'),
-- ('study for quiz', 'english quiz', 2, '9:54'),
-- ('study for history', 'history test', 3, '3:29');
SELECT * from todoslist2
where priority = 3
and completed_at IS NULL;

select COUNT(id), priority
FROM todoslist2
where completed_at IS NULL
group by priority;

SELECT COUNT(id), priority
FROM todoslist2
where completed_at > '2017-08-01'
group by priority;

Select MIN(created_at), priority
from todoslist2
group by priority
having priority = 1;
