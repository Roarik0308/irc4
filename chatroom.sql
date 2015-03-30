DROP DATABASE IF EXISTS chatroom;
CREATE DATABASE chatroom;

\c chatroom;

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
-- --------------------------------------------------------



CREATE TABLE IF NOT EXISTS userlist (
  id serial,
  username varchar(30),
  password varchar(150),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS messages (
    id serial,
    username varchar(30) NOT NULL,
    message varchar(500) NOT NULL,
    PRIMARY KEY(id)
);




INSERT INTO userlist (username,password) VALUES ('falbellaihi',crypt('fhfh', gen_salt('bf')));
INSERT INTO userlist (username,password) VALUES ('user',crypt('test', gen_salt('bf')));

