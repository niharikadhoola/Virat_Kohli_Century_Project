#create database
create database cricket;
use cricket;
select * from virat;
alter table virat change column Against country varchar(30);
alter table virat change column `Inn.` innings int; 
alter table virat change column column1 location varchar (30);
alter table virat change column `H/A`homeaway varchar(30);

select country,sum(Score) as runs,count(Score) as Matches,avg(Score) as avg_runs,max(Score) as max_runs
from virat
group by country
having max_runs>200
order by max_runs desc
limit 3;

select country,count(score) as matches,sum(score) as runs,avg(score) as avg_runs,max(score) as max_runs
from virat
group by country
having max_runs>=200
order by max_runs desc
limit 3;

select Result ,count(score) as matches,sum(score) as runs from virat
group by Result 
order by  matches desc ;

select Format ,count(score) as matches,sum(score) as runs from virat
group by Format 
order by  matches desc ;

select  `Man of the Match`,count(score) as matches,sum(score) as runs from virat
group by `Man of the Match`
order by  matches desc ;

select  `Batting Order`,count(score) as matches,sum(score) as runs from virat
group by `Batting Order`
order by runs desc ;

select  Venue,count(score) as matches,sum(score) as runs from virat
group by venue
order by runs desc 
limit 5;

select  `Out/Not Out`,count(score) as matches,sum(score) as runs from virat
group by `Out/Not Out`
order by runs desc ;

select * from virat ;
select * from virat where location=" sydney";
select * from virat where trim(location)="Chennai";

alter table virat add column year int;
update virat set year=right(Date,4) ;

select  year,count(score) as matches,sum(score) as runs from virat
group by year
order by runs desc ;

