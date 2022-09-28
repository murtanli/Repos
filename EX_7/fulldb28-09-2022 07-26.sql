#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '7', '1', 'Velit ut dolores laboriosam quae esse. Quos nesciunt architecto perspiciatis ipsa voluptatem porro odio molestiae. Et quia quo sed distinctio et quasi.', 'cum', 33700173, NULL, '1996-08-24 12:46:03', '2013-05-18 05:40:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '4', '2', 'Sed magni temporibus enim iusto exercitationem. Neque beatae expedita vero eveniet qui. Numquam repudiandae accusamus dolor repellendus corrupti.', 'magni', 349, NULL, '2001-08-10 01:57:35', '1992-05-19 10:07:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '2', '3', 'Totam ab nostrum a quam nihil sunt. Corporis ipsam iusto enim beatae. Reprehenderit suscipit numquam numquam. Non nesciunt architecto aut optio et.', 'id', 6641319, NULL, '2020-04-02 15:25:37', '1985-11-26 08:32:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '10', '4', 'Quasi eum porro ea ad. Dolorem quia ad nam est. Corrupti harum quaerat sit.', 'rerum', 62110, NULL, '1985-08-29 23:43:02', '1970-05-07 16:32:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '4', '5', 'Velit laudantium sed culpa iusto. Voluptates facilis exercitationem recusandae qui velit ducimus est doloremque. Consequuntur dolore ex ipsum. Autem cupiditate sint dolores.', 'voluptas', 63570933, NULL, '1979-05-05 13:40:17', '1992-09-13 03:19:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '1', '6', 'Repellendus dolor corporis doloribus ipsam est ullam. Quia consequuntur non voluptate aut quaerat. Maiores sint officia et optio sint voluptate in. At dolore non libero molestiae culpa aliquam aperiam. Vel non sit voluptates eaque.', 'in', 231414, NULL, '1972-02-02 10:05:26', '1991-06-02 09:31:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '9', '7', 'Aperiam est qui voluptatem. Et nisi doloribus aliquam aut sed eos. Aut autem aut assumenda quasi officia. Et non amet ut distinctio.', 'labore', 2, NULL, '1994-03-06 06:24:05', '1975-06-29 18:01:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Laborum dicta sint iste neque. Eveniet vero quis voluptates totam reiciendis ad eius.', 'a', 88, NULL, '1993-10-24 02:54:42', '2016-12-06 15:08:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '8', '9', 'Omnis magni incidunt voluptates est voluptatem possimus. Eveniet autem similique placeat corrupti sit. Et odio maiores non est vitae doloribus.', 'et', 408449, NULL, '2010-01-22 03:11:00', '2012-11-21 14:18:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '4', '10', 'Sunt placeat nihil deleniti assumenda magni. Sed vero quia repellat quod natus voluptas iusto. Tempore ut pariatur dolorem deleniti sunt sed sit.', 'voluptas', 991, NULL, '2015-05-15 08:37:46', '2005-10-11 21:17:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '5', '11', 'Similique non exercitationem qui architecto nostrum occaecati. Amet sapiente officia incidunt ad minima qui. Voluptatum iure veritatis ipsum et et non et.', 'dolore', 3853568, NULL, '1986-02-07 00:57:19', '2007-06-17 23:37:23');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'officia', '1997-10-02 18:36:28', '2013-10-16 01:45:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'perspiciatis', '2015-01-24 18:56:27', '1990-01-20 14:23:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'perspiciatis', '1974-03-01 07:28:16', '2004-07-30 02:42:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'enim', '2000-11-27 09:00:41', '2020-01-25 16:38:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'ad', '1979-12-09 10:17:04', '1978-07-27 03:00:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quo', '1974-01-31 01:12:36', '2014-01-07 04:50:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'rerum', '2014-08-06 22:52:37', '2010-01-07 00:25:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'ut', '1999-08-01 10:32:52', '1980-07-02 13:02:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'incidunt', '1988-09-23 08:23:35', '2022-04-23 06:55:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'sed', '2010-12-23 16:26:50', '1999-08-10 09:53:14');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'aut', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'inventore', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'voluptate', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'ut', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'sunt', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'eius', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'rerum', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'dolorem', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'nemo', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'ut', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'tempora', '37');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '10', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '5', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '4', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '8', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '4', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '2', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '9', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '4', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '11', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '5', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '7', '11');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '1977-11-21', '11', '2001-07-18 06:50:34', 'East Emelia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '1983-07-12', '2', '1976-10-02 13:15:29', 'Schoenshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'm', '1988-08-27', '9', '2008-02-04 04:43:32', 'Rosinabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1971-05-11', '8', '2008-11-30 14:53:39', 'Port Turner');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'm', '1999-09-02', '6', '1998-01-11 06:01:02', 'South Dixieborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '2019-09-25', '7', '1994-08-25 17:33:51', 'Lake Loma');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '2020-05-17', '8', '1976-01-04 17:05:10', 'West Ervin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'm', '1975-10-12', '1', '2014-07-09 06:06:27', 'Nathanville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '2002-05-24', '8', '1983-04-23 17:58:40', 'Toneyburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '2022-01-14', '8', '1984-08-26 23:39:19', 'North Norrisport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'f', '1994-04-13', '5', '1984-12-13 00:55:29', 'Port Blazechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '1999-10-30', '9', '2017-10-14 08:14:29', 'Lake Nella');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'm', '1976-07-06', '6', '1999-12-06 16:18:37', 'West Schuyler');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '2000-07-13', '6', '2022-05-31 02:11:07', 'Maggioport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'f', '1972-07-05', '6', '2010-10-17 11:34:25', 'Paulineport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'm', '1986-01-10', '8', '2015-11-03 14:25:07', 'Port Madonnaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'm', '2004-09-18', '2', '2014-05-21 17:21:52', 'East Vanhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '1994-06-28', '4', '1979-06-21 12:23:28', 'New Cameronbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1997-03-13', '6', '1978-07-25 17:15:48', 'Ledaton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '1995-02-05', '4', '1997-08-18 18:07:53', 'Marvinland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '2022-08-04', '5', '2010-04-15 22:18:56', 'Port Jaren');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'm', '2010-11-27', '10', '1986-07-20 22:26:30', 'Anikaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '1973-07-23', '2', '1992-06-21 15:49:54', 'North Eldridgeview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '2015-12-08', '11', '2016-08-27 03:36:14', 'Alizeview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'f', '1973-07-01', '8', '1987-05-09 03:01:48', 'Kyleshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '2007-10-28', '6', '1977-07-30 16:41:04', 'East Kariborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '1994-07-23', '3', '1992-03-07 00:11:53', 'West Billyland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '1994-06-07', '4', '1978-04-04 22:30:48', 'West Tierraville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '1984-09-18', '3', '1992-06-06 00:47:12', 'Lindgrenfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '2021-06-17', '2', '1996-07-17 03:53:14', 'Carrollland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '2012-07-23', '4', '1990-10-27 07:23:24', 'Streichland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '1992-02-05', '2', '2020-06-14 13:29:10', 'Hilllstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '2018-08-25', '4', '1993-12-17 17:21:45', 'Millerside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2000-11-09', '1', '1996-02-07 01:08:31', 'East Miller');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'm', '1987-02-24', '9', '1984-03-01 17:27:30', 'Mercedesfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '2011-03-27', '9', '1978-05-13 13:52:46', 'North Romaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '2004-07-15', '8', '1973-12-28 17:29:28', 'West Demetrius');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1977-09-22', '5', '1972-05-08 07:04:16', 'O\'Connerhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '2008-01-18', '9', '2021-02-17 06:31:47', 'Joanieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2016-03-19', '4', '2003-04-06 20:20:29', 'North Abdulfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'm', '1973-02-08', '2', '2001-08-10 12:27:23', 'Rauview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '2002-06-03', '3', '2012-11-21 16:35:45', 'North Waldo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'm', '2014-12-18', '1', '2006-12-14 03:04:32', 'South Cindyville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'f', '2000-12-25', '8', '2020-06-30 22:36:00', 'South June');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '1991-05-23', '8', '2005-02-03 13:51:28', 'Barrowsville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '1996-01-05', '7', '2016-04-21 21:14:14', 'Waelchimouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'm', '1970-10-09', '4', '1998-06-12 16:09:54', 'Handview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '2020-10-19', '9', '2006-04-18 23:26:11', 'Lake Troyport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '2015-09-14', '10', '1990-11-29 12:37:27', 'South Rodgerton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '1989-01-13', '10', '1987-06-11 08:21:56', 'Kreigerburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'f', '2003-07-22', '2', '1984-09-14 22:04:44', 'Lake Ali');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '1974-06-13', '4', '1994-06-25 06:29:43', 'East Larryhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '1988-09-21', '8', '1974-02-14 17:39:25', 'Lednerport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '2009-12-25', '3', '1992-06-10 19:01:34', 'Percyland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '1994-03-31', '3', '2018-12-19 01:35:30', 'West Austynburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '1974-10-17', '5', '1979-11-28 00:58:16', 'North Alene');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'm', '1987-06-17', '9', '2012-05-18 22:25:39', 'West Wandafort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '1989-02-13', '6', '2017-06-22 13:50:39', 'Alejandrinmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '1971-05-14', '8', '2003-05-31 23:12:09', 'Port Salma');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '1982-07-22', '11', '2002-03-28 18:04:50', 'South Jaqueline');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '2004-03-05', '8', '1999-09-27 18:04:18', 'Port Lewisland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1985-06-17', '1', '1980-12-29 14:00:22', 'Port Robyntown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'f', '1980-07-03', '2', '1999-08-07 15:04:20', 'Durganside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'f', '1973-01-04', '11', '1983-12-02 13:16:08', 'Emardville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '1970-05-23', '2', '1993-08-08 23:44:01', 'Sanfordview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '2003-04-11', '10', '1990-09-27 06:59:09', 'West Adelaton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '2020-06-23', '8', '2010-08-15 16:53:02', 'South Sheila');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1970-06-20', '9', '1986-03-13 22:10:32', 'Hettingerhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '1981-02-28', '4', '2022-07-30 21:05:01', 'Windlershire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'f', '2007-02-20', '6', '1983-11-25 03:15:17', 'Gregoryhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '1984-04-20', '1', '1991-03-27 16:31:17', 'Lockmanhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '1999-11-05', '6', '2016-11-09 09:42:41', 'Hilllhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'f', '1993-03-02', '8', '1984-05-21 06:48:04', 'Leuschkeborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '1977-07-26', '2', '1985-08-13 05:56:32', 'Hintzberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'f', '1985-04-12', '2', '1980-02-29 05:30:29', 'West Rodolfo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '1970-11-06', '5', '2017-09-25 06:14:14', 'West Medaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'm', '1980-08-01', '8', '2009-11-18 20:28:15', 'Port Akeem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'm', '2000-01-28', '5', '2011-10-02 13:55:55', 'Lake Anikachester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '1992-03-03', '2', '2016-10-16 00:22:48', 'Keeblerland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'm', '2018-11-28', '7', '1990-02-19 05:43:47', 'West Rocioview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'f', '1991-05-15', '3', '1982-05-15 14:11:08', 'Dachberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2016-01-26', '4', '1996-01-29 18:58:14', 'Port Preciouschester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'f', '1988-04-28', '10', '1984-04-26 16:56:07', 'Daviston');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'f', '1987-02-22', '11', '1997-08-15 00:31:19', 'Winifredburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'm', '1982-06-19', '6', '2013-04-25 00:27:55', 'Bednarton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '2014-06-22', '2', '2020-03-26 12:36:14', 'Barrettshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '2006-09-02', '4', '1981-10-10 23:42:30', 'Opheliafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '2001-06-22', '4', '2022-08-29 20:25:59', 'East Doyleberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '1984-11-02', '7', '1978-01-29 00:21:17', 'Duanetown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1989-04-06', '1', '1980-06-14 22:00:01', 'Jaskolskistad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '2016-01-27', '3', '1974-09-13 13:49:04', 'South Joey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'f', '1999-02-10', '3', '1995-07-17 01:52:43', 'Port Alexandremouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '1995-05-25', '1', '1986-06-18 00:42:52', 'New Elainaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '1978-10-16', '5', '1996-09-17 01:35:07', 'Lake Rashawn');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '1975-09-25', '3', '1970-08-07 19:32:49', 'West Adellafort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'm', '2001-07-20', '2', '2005-01-20 16:42:20', 'Carleyfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '2019-05-11', '3', '2008-09-06 13:30:34', 'East Nedmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'f', '2014-12-11', '10', '1995-10-22 15:38:30', 'West Shaniyaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'm', '2007-05-19', '11', '1982-08-23 13:43:17', 'East Josianeport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '2008-12-23', '7', '2022-08-01 18:11:30', 'South Jasminville');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Joshua', 'Schaefer', 'francesca33@example.org', 'd74014f8bdf8129733789e994e35a6ee085708a0', '7457314001', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Charity', 'Crona', 'lilliana.ortiz@example.com', '0d853720f55704b0eccf3f38e44ded10cbf2cef6', '5573931461', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Henderson', 'Streich', 'earlene92@example.net', '6358ff89bc28ff41a45058ca0007bee362eb3534', '3005972257', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Alexzander', 'Steuber', 'milan.wunsch@example.net', '99cae1fe4125f92b5fa574c0e8f3dd4860c4b566', '4988278987', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Jeanette', 'Schmitt', 'laura25@example.com', 'ac6430c9efe97fb2649a5b4831cbde07a8ffbe05', '745019206', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Everett', 'Nader', 'nrowe@example.net', 'f983da6b014eeb681d7d78a16db3ae9e7caa5b70', '6100401489', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Bert', 'Jast', 'mante.lauren@example.net', '1efe9fde3aae18e772b6879fa0f152f9a5d748f4', '4041953012', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Hunter', 'Dach', 'anya.price@example.org', '7491cec5ece6b6428fa565a7049ae6d94a80c9f3', '505716851', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Ofelia', 'Cormier', 'rweimann@example.com', 'd9e2a3141a2fceebc1a24636fdebd5ea6bd6eebb', '4149656784', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Gabriel', 'Hahn', 'nrosenbaum@example.net', '3b4f2d429ac058e56444b07fc1162cce1be43721', '5976705059', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Catharine', 'Baumbach', 'wunsch.vena@example.org', '1d268d5c7f01711b95efdb1dff5d70561be0b74a', '1086174929', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Nathanial', 'Barrows', 'alfred64@example.net', '1069783908bcc6956a66cc49578e71c5576854a4', '5675321313', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Burnice', 'Ward', 'nolan.terry@example.net', '313016ab77261aa51e660834314a84e1128fa036', '6086669358', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Ofelia', 'Howe', 'snicolas@example.org', '5844d2195b670ab3abcdeecee4c25e9eb502aecf', '7646051339', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Antone', 'Roob', 'diamond38@example.org', '9fef4cf7ca649d991dc247373cc1367db7c1163e', '5070910982', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Keon', 'Eichmann', 'kirlin.valentine@example.org', 'b2a7e74d6efcbb44b5951c8f1ddfaeea66883f7a', '1258819201', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Kristoffer', 'Tillman', 'abby.hessel@example.com', 'd1f9171309b43ac48b6695039aa18fa22f581d21', '4085802266', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Felix', 'Towne', 'ldietrich@example.org', '4835c9f491d5e6b83f4e63981412aa018128cab8', '7538874795', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Catharine', 'Rolfson', 'lura05@example.com', '7778ae4f1ea6f19ab75cd105c6bd421524566299', '6448403997', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Benton', 'Ferry', 'larry.dooley@example.org', '06f172b468309698c619942e42d27f690f43718d', '6373830633', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Finn', 'Kautzer', 'misael.koch@example.org', 'c3c2f204a14db97f475d7de8f2c698d93ff4d835', '8207281320', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Eleazar', 'Kilback', 'rashawn.goodwin@example.com', '87459fa0c9bd11df6a1bf6c2b5115d65c3eafc21', '8060239661', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Alphonso', 'Vandervort', 'halvorson.nannie@example.com', '03a0b1ff90678ff5ebd71720ef6ed4379de845e0', '5993014280', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Jonatan', 'Morissette', 'angelo.kassulke@example.com', 'ab04199376384387dd1fd8d30e7e2a170c067f90', '750370116', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Raleigh', 'Hartmann', 'alta.gaylord@example.org', '09445078d8b7112c158640aaa89f9a841b3c08b2', '6916031654', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Blanche', 'Collier', 'bell73@example.org', '61c9f872f71d6f80eb964afe83fae817f4e43eef', '4884808868', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Aurelie', 'Tillman', 'fwaelchi@example.com', '522a3a7c4a189c54e3dc14255d11d9c7bf96a88f', '7984287878', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Wendy', 'Shields', 'greenfelder.isai@example.com', 'a0db63602653064b5eb284d2690a0d8aaa9e4e9b', '6862587536', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Jaqueline', 'Jacobi', 'renee25@example.net', 'd3a8888a558c6c8857b4937cbdc59368848968ab', '7025005785', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Jonathan', 'Conn', 'judah.fahey@example.com', 'ba1f144180e60f1024e638c0909e5d7b9abf919c', '7171454668', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Garry', 'McKenzie', 'maverick.friesen@example.net', '086b5eaa8decbc161b38b49563406c38625559f2', '5879565771', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Arlene', 'Miller', 'candace.volkman@example.org', '5c0094259d041d06c9943f6eb66b5e54897c3d1e', '1715391661', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Katelyn', 'Baumbach', 'xcormier@example.org', '64382d4a6afae4e7a912d663f5d3bf7ab43a9fca', '2979578321', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Rocky', 'Hackett', 'pstehr@example.com', '2d7c82f61aa111d8db9b4af1166abf627065c892', '1669300476', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Garnett', 'Jenkins', 'paucek.amaya@example.com', '720948c5920ce2f89aea4d9eea33b08857125a68', '4966378570', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Kimberly', 'Bernhard', 'vince74@example.org', '9360444d7e04c4ae0e47fb81e892ec6ddf9b1038', '5369970846', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Rhett', 'Mann', 'darrion.gleichner@example.org', '8eea9294eae0ffb001292c9193c09440fa4e0a64', '7901367484', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Billie', 'Swaniawski', 'florencio39@example.com', '78e5f65407e6031cf8b4a349982d4fbd8987453b', '2507944615', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Meredith', 'O\'Kon', 'block.ronny@example.net', 'daf99bd0931ac09b5819ec145903f43b4e943181', '4222388213', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Lisa', 'Kerluke', 'abel.haag@example.org', '3896d33a622a11827ae8241a055f8e8602ffc50d', '5066268166', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Victor', 'Schumm', 'ahegmann@example.net', '1585e270bb6e1fd43ec50dc0657c364dce5aa246', '3297258280', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Royal', 'Schowalter', 'ward.schaefer@example.net', '0fd4a9540c78d0c59cf712bf8e08eb1f7b832621', '3287701429', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Freeda', 'Johnston', 'srolfson@example.com', 'fffa518a1d1d36d507c467ea611cce3970446caa', '7092632396', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Sofia', 'Littel', 'bkoelpin@example.com', 'b1762157915b857793c9e9c8781c7c1351838888', '4243028542', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Mack', 'Funk', 'cordell87@example.com', 'db8cf6f0d90f346635ef14b5b8fffb5253a35e8f', '2728424562', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Ahmed', 'Sporer', 'mariana08@example.org', 'f75ac2ef7f5a7ba9e019e09d3ce2434a246c3e2b', '201505161', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Daija', 'Roberts', 'paige.streich@example.com', '5c76202945cdab17eadc6ba619ffb2f3e7773329', '1126771856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Beverly', 'Bahringer', 'walker.tatyana@example.org', 'f89c1baaeb36a42cc870e422073007a36c88afa4', '1807981858', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Lilly', 'Witting', 'marcos92@example.net', 'f52c7703602ebcb714c076089ec5feac20a86081', '4823100308', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Dorothy', 'Runolfsdottir', 'ramona13@example.com', '11a29363a5fc205fb3691adee37b599b77fb3771', '4509159382', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Destini', 'Blanda', 'pfannerstill.luther@example.net', '47f30d0a6d47c37afd339700974bbfa8593d62b9', '1240940939', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Breanne', 'Miller', 'elaina69@example.net', '02e00bf2c7dae385c7be35c65df5e46f82111408', '4019532751', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Antonina', 'Huel', 'pgutkowski@example.com', 'a23fbe971ac9195fbaebe01fbf7e24adf3108dff', '5736171990', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Jody', 'Wiza', 'jaden20@example.org', '97f21e6f3c84c59a33e0e40e65decc84c9ab8410', '6298397728', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Zoie', 'Eichmann', 'dare.orion@example.com', '6d665527237f75210e0b79d5ace7e7bf24afc1ca', '3263786288', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Isabella', 'Wyman', 'nienow.rory@example.com', '58bfe91095d931173df86e4389bb484ebd5c4c42', '1375640536', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Gennaro', 'Schamberger', 'flatley.leonard@example.org', '87ae65e8c87bab48899b153ee8c7fb2ec968332c', '8889059303', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Elizabeth', 'Quitzon', 'gilbert35@example.com', '3df7262ed8aad5215ca6b5ad53f364b341136b9c', '4031470115', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Natasha', 'Aufderhar', 'mortimer36@example.com', '66ef02914f87fc2308860d53cec8204f911768a2', '5926653710', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Kelsi', 'Rippin', 'kunde.bulah@example.net', '9f26024f8b664acf58c85483b229f2bba7db9494', '1116802442', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Kamren', 'White', 'enrique.schoen@example.net', 'e4f35491acb9473723d13d4eabff764d742816f9', '3248606857', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Theresia', 'Treutel', 'linnie74@example.net', 'c5ca88c9230eb4e1a00a22c5857eca8b6db74442', '4676513543', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Jane', 'Balistreri', 'sprosacco@example.net', '7bd6c1c0050650f30e534db5af53ef153aab4288', '737844531', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Carolanne', 'Funk', 'rschowalter@example.org', '03828372bac45b66ff28354ab0554869034b2466', '5413895437', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Daron', 'Waters', 'hhamill@example.org', 'f60c46847ecde1eeb1c9eff8625128400d29fdd6', '3456989428', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Lacey', 'Hessel', 'orland75@example.net', '22430752254f9a2f34f0c2fb9cb7364b80142230', '900677125', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Soledad', 'Fahey', 'gwolf@example.net', 'e66ddacab7ae514e2a56d6fbba75f5a0a7259c93', '7525794070', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Beatrice', 'Hegmann', 'emie.skiles@example.com', '0c00c9e9cdd811766368dc5c6ed52dced9012902', '6722723022', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Nasir', 'Willms', 'lindgren.caden@example.com', '7b55a6630a8fc844c758c285bce3b497e807160e', '945922630', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Yvonne', 'Greenfelder', 'kulas.lorna@example.com', '8db92faca35be6774a5509fc6e2a5cadb7eabcb6', '3116278094', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Alec', 'Crona', 'karli97@example.com', '0fb9b0567576649a2035afd81fdd91befe899eef', '4033624620', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Jimmy', 'Feeney', 'elmer.kozey@example.net', 'e3f905df307daa70f844b3e6297a8f11f7e69e69', '8476457126', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Lura', 'Dare', 'bauch.tod@example.com', 'b8e262490b5be94fdd7a92268ab3c208546a8d90', '554916934', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Green', 'Dooley', 'noel.brakus@example.org', '6f761ed7c78d8f0dfca5647deccfa229c7287d6e', '3865565646', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Cassie', 'Turcotte', 'kaden.bartoletti@example.org', '7581a2aa800078f986cf0ea8a47544208a5aa225', '5367415550', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Kiara', 'Mertz', 'purdy.virgie@example.org', '2f51627b4177f6699a0f447e35019cf0a853fc93', '3132666122', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Marvin', 'Erdman', 'kevon.koss@example.net', '339cb08fb1488dc41190323f536d1067cd2c14a7', '2920084265', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Ali', 'Graham', 'charlene75@example.com', '6f183ffb4fa69fc2cbf2d2203cba387e14864d86', '3011950563', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Katelin', 'Schulist', 'cmarquardt@example.net', '7f48b247858728fb485f1126bea8620b5c213ec0', '3309977612', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Fae', 'Bailey', 'deron39@example.org', 'e78401b56d635ba0da5b4e357bae50f3fa636a89', '6479984175', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Felicita', 'Hermann', 'ollie.mosciski@example.net', '4d7c2337d21ededf5016fa7492360cc666c18718', '6989098391', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Liliana', 'Sawayn', 'vryan@example.org', 'a8ea1662b2c8397e47cf93dd27e06c8611548842', '6436707051', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Lukas', 'Adams', 'klocko.dorothea@example.com', 'ffab77e7c793cf4eca5ed8acb191f6126836dbe4', '1353609626', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Gwen', 'Stark', 'vicky.lockman@example.com', '552641236d053063260ba73a1e92c9cd3fb3dc81', '6217375308', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Maymie', 'Schroeder', 'hagenes.osbaldo@example.org', '02fc999d5e0bbc1e7a20736b89c3706ff1a001fd', '2141175552', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Octavia', 'Ruecker', 'hbeer@example.org', 'd33b678e0d79e27fa81dcba72795290e07703fb2', '4653181398', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Dorris', 'Deckow', 'russell36@example.net', 'd7d195b150515645027c6ed158935b37b1be4cfc', '7614817762', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Sienna', 'Mosciski', 'reinhold95@example.com', '8386415fcbae66c8a65a7e9c842c6a161fd20c6d', '1059033382', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Lafayette', 'Daugherty', 'okohler@example.org', '274154e76f8b1d72accc15a880832b475ad14ae9', '3298188165', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Dedric', 'Adams', 'santino.jacobson@example.net', '9c3f2625bae22d009bb7cc84540e5891aff6ef6b', '3645688775', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Myles', 'O\'Hara', 'retta50@example.net', 'fc80c6114a0c9b26957a29379552a19114638789', '5188971496', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Keagan', 'Moore', 'leuschke.johnathon@example.com', '74a7bb76f51862813391855329f257acebade539', '4827021772', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Margaret', 'Pfannerstill', 'uondricka@example.net', '029a10edda47b5b853c2cc0bbb5561fbd2ac8d1a', '2166911517', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Ila', 'Smitham', 'tkrajcik@example.net', '80ed8dc8c3d182d8c70b114933f6696bac567ab6', '2626625590', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Adeline', 'Schultz', 'americo28@example.net', 'c9ece43d049af3c59fd574da70eb5d21a5abe909', '4120812159', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Gia', 'Wolf', 'rippin.alvena@example.net', '8cecdfe16f43bea3178cf5325ea68af01b965042', '1751882022', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Rolando', 'Franecki', 'dtromp@example.net', '3013cfc8efa8b999bdc9ce1d9c827858dd78b29a', '7149746913', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Nicholas', 'Greenholt', 'awalter@example.net', '534750633811fea03e4f813bce96d94719ccc935', '8724383985', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Graciela', 'Kiehn', 'woodrow32@example.org', 'f3b37f297be5e48d4f0d14bbc2ede54afddccca6', '3154405532', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Josie', 'Schiller', 'jadon.graham@example.net', '27ef2cdef24968b2c188e2d627383b82424cac83', '4184629366', '1');


