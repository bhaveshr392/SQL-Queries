					-- Basic Functions
-- 1. Upper()
select sname,upper(sname) from school;

-- 2. Lower()
select sname,lower(sname) from school;

-- 3. replace()
select sname,replace(sname,'A','B') from school;

-- 4. Left()
select sname,left(sname,3) from school;

-- 5. Right()
select sname,right(sname,3) from school;

-- 6. Substr()
select sname,substr(sname,2,3) from school;

-- 7. Lenght()
select sname,length(sname) from school;

-- 8. reverse()
select sname,reverse(sname) from school;

-- 9. concat()
select sname,concat(sname,"@gamil.com") from school;


				 -- Windows Functions
-- Rank()
-- Dense_rank()
-- Row_Number()

Create database Cdata;
use cdata;

create table youtube (id int primary key auto_increment,
Channelname varchar(50) not null,
Category varchar(50) not null,
Duration int default 1135,
No_views int,
No_comments bigint,
Rating float) auto_increment = 1;

insert into youtube (Channelname,Category,Duration,No_views,No_comments,Rating) Values
('TechWorld', 'Technology', 1200, 500000, 15000, 4.8),
('FoodiesHub', 'Cooking', 980, 320000, 8500, 4.5),
('TravelVibes', 'Travel', 1400, 760000, 21000, 4.9),
('GamingZone', 'Gaming', 1800, 1250000, 55000, 4.7),
('FitnessPro', 'Health', 1100, 420000, 12000, 4.6),
('StudySmart', 'Education', 1500, 890000, 34000, 4.9),
('MusicBeats', 'Music', 2000, 2200000, 98000, 4.8),
('MovieTalks', 'Entertainment', 1300, 670000, 18000, 4.4),
('DIYCrafts', 'Lifestyle', 1000, 310000, 7600, 4.3),
('ScienceLab', 'Science', 1700, 580000, 14500, 4.9),
('NatureLens', 'Nature', 1600, 430000, 9800, 4.7),
('NewsToday', 'News', 900, 820000, 27000, 4.2),
('ComedyClub', 'Comedy', 1150, 970000, 45000, 4.6),
('FashionTrend', 'Fashion', 1050, 290000, 6200, 4.1),
('ArtStudio', 'Art', 1250, 350000, 8700, 4.5),
('CodingGuru', 'Programming', 2100, 1150000, 39000, 5.0),
('AutoDrive', 'Automobile', 1450, 470000, 13000, 4.4),
('FinanceTalk', 'Finance', 1550, 610000, 17500, 4.7),
('PetCare', 'Animals', 950, 280000, 5400, 4.6),
('HistoryFacts', 'History', 1650, 390000, 11200, 4.8),
('SpaceExplorer', 'Science', 1900, 940000, 31000, 4.9),
('KidsFun', 'Kids', 850, 1500000, 42000, 4.3),
('SportsArena', 'Sports', 1750, 830000, 26000, 4.7),
('MotivationDaily', 'Motivation', 1000, 720000, 22000, 4.8),
('BeautyTips', 'Beauty', 950, 410000, 9100, 4.4),
('DailyVlogs', 'Vlogging', 1350, 540000, 16000, 4.5);

select * from youtube;
INSERT INTO youtube (Channelname, Category, Duration, No_views, No_comments, Rating) VALUES
('CryptoWorld', 'Finance', 1450, 680000, 18000, 4.6),
('ChefKitchen', 'Cooking', 1120, 390000, 9200, 4.5),
('AdventureSeekers', 'Travel', 1680, 810000, 24500, 4.8),
('GameMaster', 'Gaming', 1920, 1450000, 62000, 4.9),
('YogaLife', 'Health', 980, 470000, 13800, 4.7),
('MathGenius', 'Education', 1540, 920000, 36000, 4.9),
('RockMusic', 'Music', 2100, 2500000, 110000, 4.8),
('CinemaReview', 'Entertainment', 1180, 730000, 21000, 4.3),
('HomeDecor', 'Lifestyle', 1080, 360000, 8500, 4.4),
('PhysicsPoint', 'Science', 1740, 640000, 17000, 4.9),
('WildNature', 'Nature', 1580, 520000, 12000, 4.7),
('GlobalNews', 'News', 890, 930000, 28500, 4.1),
('FunnyMoments', 'Comedy', 1250, 1080000, 51000, 4.8),
('StyleIcon', 'Fashion', 990, 315000, 7200, 4.2),
('SketchWorld', 'Art', 1320, 405000, 9900, 4.6),
('JavaMaster', 'Programming', 2050, 1230000, 41500, 5.0),
('BikeReview', 'Automobile', 1490, 550000, 15000, 4.5),
('StockMarketPro', 'Finance', 1620, 780000, 23000, 4.8),
('AnimalPlanet', 'Animals', 930, 340000, 6900, 4.7),
('AncientHistory', 'History', 1710, 460000, 12500, 4.8),
('GalaxyVision', 'Science', 1990, 1020000, 35500, 5.0),
('CartoonKids', 'Kids', 810, 1720000, 48000, 4.4),
('CricketZone', 'Sports', 1820, 910000, 29500, 4.8),
('SuccessMind', 'Motivation', 960, 790000, 24000, 4.9),
('MakeupStudio', 'Beauty', 940, 455000, 9800, 4.5),
('LifeJourney', 'Vlogging', 1410, 620000, 18500, 4.6);

					-- Rank()
select * from youtube;

-- Rank by Rating from youtube database
select *,rank()over(order by rating) as Rnk
from youtube;

-- ranking in descending order
select *,rank()over(order by rating desc) as Rnk
from youtube;

-- Category wise views from youtube database
select channelname,No_views,category,rank()
over(partition by category order by no_views desc) as rnk_viwes
from youtube;

					-- dense_Rank()
		
select *,dense_rank()over(order by rating desc) as rank_viwes
from youtube;

select *,dense_rank() over(partition by category order by no_views desc ) as rnk
from youtube limit 5;

select *,dense_rank() over(partition by category
order by no_comments)as rnk from youtube where category in ('Entertainment','Music','Sports','Animals')
and duration > 1000 and no_views >250;

-- add one more dense_rank()
select *,dense_rank() over(partition by category
order by no_comments)as rnk ,dense_rank() over(order by rating desc) as overall_rating from youtube where category in ('Entertainment','Music','Sports','Animals')
and duration > 1000 and no_views >250;



							-- sub Qurey use

select * from(
select *,dense_rank() over(partition by category order by No_comments ) as drnk from youtube) as t 
where category in ('entertainment','music','sports') and duration >1000 and no_views >250;

					-- Aggregate Function
-- 1. Sum()
-- 2. Min()
-- 3. Max()
-- 4. Avg()
-- 5. Count()

use class;
					-- Sum()
select * from sdata;
-- Display the Total Sfee from sdata
select sum(sfee) from sdata;

--  city wise sfee 
select city,sum(sfee) as Total_sfee from sdata group by city;

				-- Max()
select * from sdata;

-- Display Max sfee from sdata
select max(sfee) from sdata;

--  city wise sfee 
select city,max(sfee) as MIX_sfee from sdata group by city;

					-- Min()
-- Display the Min_sfee from sdata
select Min(sfee)from sdata;

select city,Min(sfee) as min_sfee from sdata group by city;

					-- Avg()
select * from sdata;
select city,avg(sfee) from sdata group by city;

					-- count()
select * from sdata;
-- city wise count 
select city , count(*) from sdata group by city;

			-- order by ( use with filter ex -> asc,dsc)
-- Display the Total City group wise calculated as ascending order
select city ,count(*) as Total_City from sdata group by city order by city;

-- Display the Total City group wise calculated as descending order
select city ,count(*) as Total_city from sdata group by city order by city desc;

-- Display the Limited City 
select city ,count(*) as Total_city from sdata group by city order by city limit 3;


					-- Transactions Functions
select * from transaction;


select *, 
case 
when amount > 500 then amount -100
when amount <500 then amount -50
end as dis_amt
from transaction;

-- discount only card 
select *, 
case 
when amount > 500 and pay = 'card' then amount -100
when amount <500 and pay = 'card' then amount -50
end as dis_amt
from transaction;
