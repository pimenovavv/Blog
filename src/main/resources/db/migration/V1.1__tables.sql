CREATE TABLE users(
    id INT PRIMARY KEY NOT NULL,
 is_moderator int4,
  reg_time timestamp,
  name varchar(255),
  email varchar(255),
  password varchar(255),
  code varchar(255),
   photo TEXT);

CREATE TABLE tags (id INT PRIMARY KEY NOT NULL, name varchar(255));
CREATE TABLE captcha_codes (
id INT PRIMARY KEY NOT NULL,
time timestamp,
code TINYTEXT NOT NULL,
secret_code TINYTEXT NOT NULL);
