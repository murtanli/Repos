#
# TABLE STRUCTURE FOR: avat
#

DROP TABLE IF EXISTS `avat`;

CREATE TABLE `avat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_photo` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `avat` (`id`, `url_photo`) VALUES (1, 'http://pfannerstillframi.org/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (2, 'http://wunschmcclure.com/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (3, 'http://orn.info/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (4, 'http://boyle.com/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (5, 'http://www.roberts.org/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (6, 'http://www.mannbogisich.org/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (7, 'http://www.schultzryan.com/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (8, 'http://crist.net/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (9, 'http://bauch.info/');
INSERT INTO `avat` (`id`, `url_photo`) VALUES (10, 'http://www.weber.com/');


#
# TABLE STRUCTURE FOR: like
#

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`),
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (1, 1, 1);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (2, 2, 2);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (3, 3, 3);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (4, 4, 4);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (5, 5, 5);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (6, 6, 6);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (7, 7, 7);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (8, 8, 8);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (9, 9, 9);
INSERT INTO `like` (`id`, `video_id`, `profile_id`) VALUES (10, 10, 10);


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_photo` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (1, 1, 'Aut in unde ab voluptatem veritatis saepe hic. Fuga ducimus nisi culpa iure explicabo. Nulla dolorem voluptate perferendis quos nulla perferendis consequatur. Necessitatibus eum enim quidem.', 'http://tromp.org/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (2, 2, 'Esse perspiciatis recusandae aut a fugit reiciendis sit nam. Voluptatibus et repellendus et molestias vel magni.', 'http://www.ernserwuckert.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (3, 3, 'Dignissimos porro rem officia. Assumenda modi iste omnis nisi quia nemo impedit. Reprehenderit et aut quia id sed praesentium. Voluptatem architecto asperiores qui consequatur.', 'http://ernserturcotte.info/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (4, 4, 'Quis quia porro qui dolorum eos magnam velit. Illo velit cupiditate omnis ut ut voluptate. Dolorem modi quisquam possimus animi quidem magnam et. At repellendus ullam dicta suscipit omnis.', 'http://beer.org/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (5, 5, 'Est vel tempore quia dignissimos. Voluptas itaque sed qui at. Earum ipsum ex sequi amet.', 'http://www.cassin.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (6, 6, 'Suscipit nam enim ratione vel quae. Eum voluptas quidem impedit cupiditate modi. Debitis vitae unde qui magni molestiae sed quia. Sunt voluptatem nihil sapiente voluptas aut. Nisi aut hic adipisci.', 'http://considinedonnelly.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (7, 7, 'Porro error sed voluptas voluptates rerum rerum nisi. Ipsum dolore aut consequuntur magni nostrum dolore. Blanditiis consequuntur ut vero rerum beatae at. Voluptatem doloribus molestias mollitia.', 'http://www.dooleykeebler.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (8, 8, 'Qui aut et aut perspiciatis explicabo. Necessitatibus rerum mollitia accusantium sunt. Aut est dolorem et laborum. Tenetur qui ipsam aliquam laborum ipsum molestiae fugit ut.', 'http://www.donnelly.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (9, 9, 'Vel perspiciatis est nihil. Libero culpa non minus repudiandae. Ut eum eos laudantium praesentium id sit officia.', 'http://www.williamsondach.com/');
INSERT INTO `post` (`id`, `profile_id`, `text`, `url_photo`) VALUES (10, 10, 'Omnis sit ut voluptate ipsa. Et ipsum nihil error consequatur voluptatum. Sint blanditiis veritatis soluta ipsum id aut odio molestiae.', 'http://www.keebler.net/');


#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(11) NOT NULL,
  `avat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `avat_id` (`avat_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `profile_ibfk_2` FOREIGN KEY (`avat_id`) REFERENCES `avat` (`id`),
  CONSTRAINT `profile_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (1, 'et', 'Smith', 1, 1, 1);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (2, 'veritatis', 'Herman', 2, 2, 2);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (3, 'ipsam', 'Goodwin', 3, 3, 3);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (4, 'quam', 'Deckow', 4, 4, 4);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (5, 'voluptates', 'Yundt', 5, 5, 5);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (6, 'et', 'Douglas', 6, 6, 6);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (7, 'dolores', 'Becker', 7, 7, 7);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (8, 'esse', 'Ryan', 8, 8, 8);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (9, 'eveniet', 'D\'Amore', 9, 9, 9);
INSERT INTO `profile` (`id`, `name`, `lastname`, `video_id`, `avat_id`, `user_id`) VALUES (10, 'ea', 'Harris', 10, 10, 10);


#
# TABLE STRUCTURE FOR: subs
#

DROP TABLE IF EXISTS `subs`;

CREATE TABLE `subs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `subs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `subs_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (1, 1, 1);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (2, 2, 2);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (3, 3, 3);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (4, 4, 4);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (5, 5, 5);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (6, 6, 6);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (7, 7, 7);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (8, 8, 8);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (9, 9, 9);
INSERT INTO `subs` (`id`, `user_id`, `profile_id`) VALUES (10, 10, 10);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `log`, `pas`) VALUES (1, 'Trudie Bashirian', 8782);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (2, 'Jayce Turcotte', 4888);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (3, 'Angelina Keeling DVM', 3);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (4, 'Eddie Zieme', 2147483647);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (5, 'Marcellus Murray', 0);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (6, 'Mrs. Leilani Breitenberg DDS', 2673);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (7, 'Claudine Macejkovic Jr.', 0);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (8, 'Dortha Nader III', 0);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (9, 'Walker Stokes', 57149);
INSERT INTO `user` (`id`, `log`, `pas`) VALUES (10, 'Nyah Kuhn', 4846);


#
# TABLE STRUCTURE FOR: video
#

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_video` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (1, 'http://www.fritschbeer.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (2, 'http://www.kuphal.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (3, 'http://www.bailey.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (4, 'http://www.collins.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (5, 'http://armstrongtowne.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (6, 'http://www.west.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (7, 'http://www.friesen.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (8, 'http://www.homenick.com/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (9, 'http://www.cruickshankkozey.net/', 'https://loremflickr.com/640/480/');
INSERT INTO `video` (`id`, `url_video`, `preview`) VALUES (10, 'http://www.framiemard.biz/', 'https://loremflickr.com/640/480/');


