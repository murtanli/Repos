use vk2;
-- Простыми запросами 1-2
select * from profile where id % 2 like 0;
select  * from user where `log` like 'A%';

-- Запросами с агрегациями 1-2
select count(*) from video where url_video like '%com%'; 
select sum(pas) from user; 

-- Сложными запросами с объединением 2-3 таблиц с помощью Join 2-3
select p.name,u.`log` from profile p 
inner join `user` u
on p.user_id  = u.id ;

select p.name, p.lastname, v.url_video from profile p
inner join video v 
on v.id = p.video_id; 
-- Сложными запросами с объединениями 2-3 таблиц подзапросами 2-3

select * from video where url_video  in (select v.url_video from `like` l inner join video v on l.video_id = v.id);

select *  from avat where url_photo = '%.net%' in (select url_video from video where url_video like '%.net%');

