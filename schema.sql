Create table Genre (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar(100),
  PRIMARY KEY (id)
);

Create table MusicAlbum (
  id int GENERATED ALWAYS AS IDENTITY,
  label_id int,
  genre_id int,
  author_id int,
  on_spotify BOOLEAN,
  CONSTRAINT FK_MUSICALBUM_LABEL_ID FOREIGN KEY (label_id) REFERENCES Label(id),
  CONSTRAINT FK_MUSICALBUM_GENRE_ID FOREIGN KEY (genre_id) REFERENCES Genre(id),
  CONSTRAINT FK_MUSICALBUM_AUTHOR_ID FOREIGN KEY (author_id) REFERENCES Author(id),
  PRIMARY KEY (id) 
);