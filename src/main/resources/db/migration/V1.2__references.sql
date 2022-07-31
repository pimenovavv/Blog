CREATE TABLE posts (
id INT PRIMARY KEY NOT NULL,
is_active BIT,
moderation_status ENUM('NEW', 'ACCEPTED', 'DECLINED'),
moderator_id INT REFERENCES users(id),
user_id INT REFERENCES users(id),
time timestamp,
title varchar(255),
text TEXT,
view_count INT );

CREATE TABLE post_votes (
id INT PRIMARY KEY NOT NULL,
user_id INT REFERENCES users(id),
post_id INT REFERENCES posts(id),
time timestamp,
value  TINYINT NOT NULL);

CREATE TABLE tag2post(
id INT PRIMARY KEY NOT NULL,
post_id INT REFERENCES posts(id),
tag_id INT REFERENCES tags(id));

CREATE TABLE post_comments (
iad INT PRIMARY KEY NOT NULL,
prent_id INT,
post_id INT REFERENCES posts(id),
user_id INT REFERENCES users(id),
time timestamp,
text TEXT);
