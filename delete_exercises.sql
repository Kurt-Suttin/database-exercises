

-- Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;
-- Convert to DELETE
DELETE FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT * FROM albums WHERE genre LIKE '%Disco%';
-- Convert to DELETE
DELETE FROM albums WHERE genre LIKE '%Disco%';

-- Albums by 'Whitney Houston'
SELECT * FROM albums WHERE artist = 'Whitney Houston';
-- Convert to DELETE
DELETE FROM albums WHERE artist = 'Whitney Houston';
