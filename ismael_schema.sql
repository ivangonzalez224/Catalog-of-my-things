Create table Label (
  id int GENERATED ALWAYS AS IDENTITY,
  title varchar(100),
  color varchar(100),
  PRIMARY KEY (id)
);

Create table Book (
  id int GENERATED ALWAYS AS IDENTITY,
  label_id int,
  genre_id int,
  author_id int,
  publish_date date,
  publisher varchar(100),
  cover_state varchar(100),
  CONSTRAINT FK_BOOK_LABEL_ID FOREIGN KEY (label_id) REFERENCES Label(id),
  CONSTRAINT FK_BOOK_GENRE_ID FOREIGN KEY (genre_id) REFERENCES Genre(id),
  CONSTRAINT FK_BOOK_AUTHOR_ID FOREIGN KEY (author_id) REFERENCES Author(id),
  PRIMARY KEY (id) 
);