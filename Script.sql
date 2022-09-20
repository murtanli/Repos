DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test`;
USE `test`;

create table `user` 
(
	id int primary key auto_increment,
	log char(30),
	pas int
);	

create table `profile` 
(
	id int primary key auto_increment,
	name char(20),
	lastname char(20),
	subs int,
	video int,
	avat int,
	post int,
	like_id int,
	user_id int, FOREIGN KEY (user_id)  references `user` (id)
);

create table `subs` 
(
	id int primary key auto_increment,
	user_id int, FOREIGN KEY (user_id)  references `user` (id)
	profile_id int, FOREIGN KEY (profile_id)  references `profile` (id)
)
