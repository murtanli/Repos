DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test`;
USE `test`;

create table `user` 
(
	id int primary key auto_increment not null,
	`log` char(30),
	pas int
);	

create table `profile` 
(
	id int primary key auto_increment not null,
	name char(20),
	lastname char(20),
	subs_id int not null,
	video_id int not null,
	avat_id int not null,
	post_id int not null,
	like_id int not null,
	user_id int not null, FOREIGN KEY (user_id)  references `user` (id) 
);

create table `subs` 
(
	id int primary key auto_increment not null,
	user_id int not null, FOREIGN KEY (user_id)  references `user` (id),
	profile_id int not null, FOREIGN KEY (profile_id)  references `profile` (id)
);

create table `avat` 
(
	id int primary key auto_increment not null,
	profile_id int not null, FOREIGN KEY (profile_id)  references `profile` (id),
	url_photo char(60)
);

create table `post`
(
	id int primary key auto_increment not null,
	profile_id int not null, FOREIGN KEY (profile_id)  references `profile` (id),
	`text` text,
	url_photo char(60)
);

create table `video`
(
	id int primary key auto_increment not null,
	url_video char(60),
	preview char(60)
);

create table `like`
(
	id int primary key auto_increment not null,
	video_id int not null, FOREIGN KEY (video_id)  references `video` (id),
	profile_id int not null, FOREIGN KEY (profile_id)  references `profile` (id)
);

alter table profile add CONSTRAINT FOREIGN KEY (avat_id)  references `avat` (id), 
add constraint FOREIGN KEY (subs_id)  references `subs` (id),
add constraint FOREIGN KEY (post_id)  references `post` (id),
add constraint FOREIGN KEY (video_id)  references `video` (id),
add constraint FOREIGN KEY (like_id)  references `like` (id) 
;