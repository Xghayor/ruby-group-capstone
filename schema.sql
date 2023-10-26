
CREATE TABLE item (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    published_date DATE,
    archived BOOLEAN,
    genre_id INT,
    author_id INT,
    label_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE game(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  published_date DATE,
  genre_id INT,
  author_id INT,
  label_id INT,
  FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE author(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    author_id INTEGER REFERENCES authors(id)
);




CREATE TABLE book(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  published_date DATE,
  publisher VARCHAR(100),
  cover_state VARCHAR(4),
  genre_id INT,
  author_id INT,
  label_id INT,
  FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE label(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(100),
  color VARCHAR(100)
);


CREATE TABLE genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100)
);
CREATE TABLE MUSICALBUM(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  published_date DATE,
  on_spotify BOOLEAN,
  genre_id INT,
  author_id INT,
  label_id INT,
  FOREIGN KEY(genre_id) references genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY(author_id) references author(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY(label_id) references label(id) ON DELETE SET NULL ON UPDATE CASCADE
);