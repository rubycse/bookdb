CREATE TABLE book
(
  id BIGINT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  description VARCHAR(1000),
  file_name VARCHAR(255),
  file MEDIUMBLOB,
  file_size BIGINT,
  PRIMARY KEY (id)
);
