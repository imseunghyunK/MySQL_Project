use baseball;

select * from playerdb;

-- 이대호라는 선수의 모든 테이블의 정보 검색
select *
from player p inner join hitterdb h
on h.name = '이대호' and p.playerid = h.playerid; 

desc hitterdb;

-- 타자들 연봉 30% 인상하기
select name, sal from hitterdb;
update hitterdb set sal = sal*1.3;
select name, sal from hitterdb;
commit;

-- 모든 투수들의 마지막 경기를 오늘로 바꾸기
select * from pitcherdb;
update pitcherdb set lastdate=now;
select * from pitcherdb;
commit;

-- 연봉이 10000이하인 타자들만 20% 인상
select name, sal from hitterdb;
update hitterdb set sal = sal*1.2 where sal <= 10000;
select name, sal from hitterdb;

-- 투수들의 이름, 소속팀, 포지션, id, 데뷔 날짜 출력하기
select pitcherdb.name, pitcherdb.team, playerposition, pitcherdb.playerid, debutdate
from pitcherdb, playerdb
where pitcherdb.playerid = playerdb.playerid;

-- 투수들의 이름, 소속팀, 포지션, id, 데뷔 날짜를 데뷔 날짜가 빠른 순으로 출력하기
select pitcherdb.name, pitcherdb.team, playerposition, pitcherdb.playerid, debutdate
from pitcherdb, playerdb
where pitcherdb.playerid = playerdb.playerid
order by debutdate asc;
