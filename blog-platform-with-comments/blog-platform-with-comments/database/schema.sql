CREATE DATABASE IF NOT EXISTS inkly_blog CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE inkly_blog;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(190) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  excerpt VARCHAR(500) NOT NULL,
  content TEXT NOT NULL,
  category VARCHAR(100) NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE comments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  text VARCHAR(1000) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (id,name,email,password) VALUES
(1,'Demo Writer','demo@inkly.com','demo123'),
(2,'Maya Chen','maya@inkly.com','maya123'),
(3,'Arun Kumar','arun@inkly.com','arun123');

INSERT INTO posts (id,title,excerpt,content,category,user_id) VALUES
(1,'The Future of Artificial Intelligence','A practical look at how AI is changing the way we learn, build, and solve everyday problems.','Artificial intelligence is moving from a distant research topic into an everyday creative tool. The most useful way to understand this shift is not as a replacement for learning, but as a new layer of capability.','Artificial Intelligence',2),
(2,'Getting Started with Python','A beginner-friendly path from your first print statement to building useful mini projects.','Python is popular because the language lets beginners focus on solving problems rather than fighting complicated syntax.','Programming',3),
(3,'How Students Can Build Better Projects','Move beyond tutorial copying with a simple process for turning real problems into presentable projects.','A strong student project starts with a problem, not a technology list.','Student Life',1);

INSERT INTO comments (post_id,user_id,text) VALUES
(1,1,'The point about judgment is especially useful.'),
(2,2,'Small projects make learning Python much less intimidating.'),
(3,1,'Starting with the real problem makes project decisions much clearer.');