use hitter


-- 타자

select name, playerposition, team, homerun from hitterdb order by homerun desc limit 3;

select name, playerposition, battingaverage from hitterdb order by battingaverage desc limit 3;

select name, playerposition, safety from hitterdb order by safety desc limit 3;

select name, playerposition, stolenbases from hitterdb order by stolenbases desc limit 3;

select name, playerposition, war from hitterdb order by war desc limit 3;

select name, playerposition, sal from hitterdb order by sal desc limit 3;

-- 투수

select name, playerposition, win from pitcher order by win desc limit 3;

select name, playerposition, save from pitcher order by save desc limit 3;

select name, playerposition, hld from pitcher order by hld desc limit 3;

select name, playerposition, war from pitcher order by war desc limit 3;

select name, playerposition, sal from pitcher order by sal desc limit 3;

/**
성이 김씨인 사람만 모든 정보 출력
 */

-- 타자
select * from hitterdb where name like '김%';

-- 투수
select * from pitcher where name like '김%';

/**
3루수(3B)만 이름, 팀 출력
 */

select name, team, playerposition from hitterdb where playerposition = '3B';

/**
마무리(CP)만 이름, 팀 출력
 */

select name, team, playerposition from pitcher where playerposition = 'CP';

/**
인원 수 출력
 */

select count(*) from hitterdb;

select count(*) from pitcher;

/**
연봉 평균 출력
 */

select round(avg(sal)) from hitterdb; 

select round(avg(sal)) from pitcher; 

select h.name , h.team , h.playerposition 
from hitterdb h , player p  
where h.playerid = p.playerid;