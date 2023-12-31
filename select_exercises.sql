USE codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';


#     The genre for Nevermind

SELECT genre
FROM albums
WHERE name = 'Nevermind';


# Which albums were released in the 1990s

SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999 ;

# Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < 20;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre= 'rock';


