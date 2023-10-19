Create table Genre (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar(100),
  PRIMARY KEY (id)
);

CREATE TABLE Author (
  id INT,
  first_name VARCHAR(100)
  last_name VARCHAR(100)
  PRIMARY KEY(id)
);

Create table Label (
  id int GENERATED ALWAYS AS IDENTITY,
  title varchar(100),
  color varchar(100),
  PRIMARY KEY (id)
);

Create table MusicAlbum (
  id int GENERATED ALWAYS AS IDENTITY,
  label_id int,
  genre_id int,
  author_id int,
  publish_date DATE,
  on_spotify BOOLEAN,
  CONSTRAINT FK_MUSICALBUM_LABEL_ID FOREIGN KEY (label_id) REFERENCES Label(id),
  CONSTRAINT FK_MUSICALBUM_GENRE_ID FOREIGN KEY (genre_id) REFERENCES Genre(id),
  CONSTRAINT FK_MUSICALBUM_AUTHOR_ID FOREIGN KEY (author_id) REFERENCES Author(id),
  PRIMARY KEY (id) 
);

CREATE TABLE Game (
  id int GENERATED ALWAYS AS IDENTITY,
  label_id int,
  genre_id int,
  author_id int,
  publish_date DATE,
  multiplayer VARCHAR(100),
  last_played_at DATE,
  CONSTRAINT FK_GAME_LABEL_ID FOREIGN KEY (label_id) REFERENCES Label(id),
  CONSTRAINT FK_GAME_GENRE_ID FOREIGN KEY (genre_id) REFERENCES Genre(id),
  CONSTRAINT FK_GAME_AUTHOR_ID FOREIGN KEY (author_id) REFERENCES Author(id),
  PRIMARY KEY(id)
);

Create table Book (
  id int GENERATED ALWAYS AS IDENTITY,
  label_id int,
  genre_id int,
  author_id int,
  publish_date DATE,
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
  CONSTRAINT FK_BOOK_LABEL_ID FOREIGN KEY (label_id) REFERENCES Label(id),
  CONSTRAINT FK_BOOK_GENRE_ID FOREIGN KEY (genre_id) REFERENCES Genre(id),
  CONSTRAINT FK_BOOK_AUTHOR_ID FOREIGN KEY (author_id) REFERENCES Author(id),
  PRIMARY KEY (id) 
);