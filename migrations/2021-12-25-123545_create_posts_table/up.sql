-- Your SQL goes here
CREATE TABLE POSTS (
   id bigint PRIMARY KEY  auto_increment,
   title VARCHAR(255) NOT NULL,
   text VARCHAR(255),
   published bool
);
