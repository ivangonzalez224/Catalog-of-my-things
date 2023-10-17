CREATE TABLE game (
  id INT,
  publish_date DATE,
  multiplayer VARCHAR(100),
  last_played_at DATE,
  author_id INT REFERENCES author(id),
  PRIMARY KEY(id)
 );

 CREATE TABLE author (
  id INT,
  first_name VARCHAR(100)
  last_name VARCHAR(100)
  PRIMARY KEY(id)
 );
