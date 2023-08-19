-- Select all albums
SELECT * FROM albums;
-- Update: Make all albums 10 times more popular
UPDATE albums SET sales = sales * 10;
-- Select updated albums
SELECT * FROM albums;

-- Select albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
-- Update: Move albums before 1980 back to the 1800s
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
-- Select updated albums
SELECT * FROM albums;

-- Select albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Update: Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
-- Select updated albums
SELECT * FROM albums;
