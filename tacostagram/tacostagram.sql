DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT, 
  first_name TEXT,
  last_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER, 
  posted_at TEXT, 
  image_filename TEXT
);

CREATE TABLE followers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  followed_user_id INTEGER,
  follower_user_id INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER, 
  post_id INTEGER,
  description TEXT 
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER, 
  post_id INTEGER
);