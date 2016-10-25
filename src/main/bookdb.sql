CREATE TABLE book
(
  id SERIAL NOT NULL,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  description VARCHAR(1000),
  file_name VARCHAR(255),
  file OID,
  file_size Integer,
  PRIMARY KEY (id)
);

CREATE SEQUENCE hibernate_sequence;
