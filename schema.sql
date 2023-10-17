Create table Genre (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar(100),
  PRIMARY KEY (id)
);

Create table MusicAlbum (
  id int GENERATED ALWAYS AS IDENTITY,
  item_id int,
  on_spotify BOOLEAN,
  CONSTRAINT FK_MUSICALBUM_ITEM_ID FOREIGN KEY (item_id) REFERENCES Item(id),
  PRIMARY KEY (id) 
);