select * from dbo.['YouTubeStatistics$'];

-- Checking null values in Columns

--Rank column
alter table ['YouTubeStatistics$'] 
alter column rank int;
----------------------------------------
--Youtuber Column
update ['YouTubeStatistics$']
set Youtuber = null
where Youtuber = 'NaN';

select * from
['YouTubeStatistics$'] 
where Youtuber is null;
-- No Null values in Youtuber

select Youtuber , count(Youtuber) frequency
from ['YouTubeStatistics$']
group by Youtuber
order by frequency desc
-- All Youtube Channels are unique

----------------------------------------
--Subs Column
select * from
['YouTubeStatistics$'] 
where subscribers is null;

select * from ['YouTubeStatistics$']
where subscribers = 0
-- No Null values in Subs

--Checking Maximum and minimum subs youtube channel. 
select subscribers ,Youtuber
from ['YouTubeStatistics$']
order by subscribers desc
--Max subs is 245000000
--Max subs channel is T-Series.

select subscribers ,Youtuber
from ['YouTubeStatistics$']
order by subscribers 
--Min subs is 12300000
--Min subs channel is Natan por Aï¿, Free Fire India Official, Panda, RobTopGames, Make Joke Of

----------------------------------------

--Video Views Column
select * from
['YouTubeStatistics$'] 
where [video views] is null;
-- No Null values in Subs

select Youtuber,[video views] 
from ['YouTubeStatistics$']
where [video views] = 0
--YouTube Movies,Music,Gaming,Sports,News,Popular on YouTube,Minecraft - Topic,Live this channel has 0 views


select Youtuber,[video views] 
from ['YouTubeStatistics$']
order by [video views] desc
--T-Series highest views

select Youtuber,[video views],avg([video views]) AverageViews
from ['YouTubeStatistics$']
group by Youtuber,[video views]
order by [video views] desc

select subscribers ,Youtuber
from ['YouTubeStatistics$']
order by subscribers 

----------------------------------------------

--Category Column
update ['YouTubeStatistics$']
set category = null
where category = 'NaN';

select * from
['YouTubeStatistics$'] 
where category is null;

select distinct category
from ['YouTubeStatistics$']
--Autos & Vehicles,Comedy,Education,Entertainment,Film & Animation,Gaming,Howto & Style,Movies,Music,News & Politics,Nonprofits & Activism,
--People & Blogs,Pets & Animals,Science & Technology,Shows,Sports,Trailers,Travel & Events

update ['YouTubeStatistics$']
set category = 'None'
where category is null

select top 3 category , count(category) most_category
from ['YouTubeStatistics$'] 
group by(category) 
order by count(category) desc 
-- Top channel 3 channel Entertainment,Music,People & Blogs

----------------------------------------------

-- Drop Title
alter table ['YouTubeStatistics$'] 
drop column Title;

----------------------------------------------
--Uploads
select uploads from
['YouTubeStatistics$'] 
where uploads = 0;

update ['YouTubeStatistics$']
set uploads = null
where uploads = 'nan';

select uploads from
['YouTubeStatistics$'] 
where uploads = null;


----------------------------------------------
--Country
select * from
['YouTubeStatistics$'] 
where Country = 'nan'

update ['YouTubeStatistics$']
set Country = 'Not discolsed'
where Country = 'nan';

select * from
['YouTubeStatistics$'] 
where Country = 'Not discolsed'

alter table ['YouTubeStatistics$'] 
drop column Abbreviation

----------------------------------------------
--Channel Type
select * from
['YouTubeStatistics$'] 
where channel_type = 'nan'

update ['YouTubeStatistics$']
set channel_type = 'None'
where channel_type = 'nan'

select * from
['YouTubeStatistics$'] 
where channel_type = 'None'

select * from
['YouTubeStatistics$']
where channel_type IS NULL

----------------------------------------------

--video_views_rank
select * from
['YouTubeStatistics$']
where video_views_rank IS NULL

select convert(int,AVG(video_views_rank)) 
from ['YouTubeStatistics$'];

update ['YouTubeStatistics$']
set video_views_rank = 554248 
where video_views_rank is null;

----------------------------------------------

--country_rank
select * from
['YouTubeStatistics$']
where country_rank IS NULL

select convert(int,AVG(country_rank)) 
from ['YouTubeStatistics$'];

update ['YouTubeStatistics$']
set country_rank = 386 
where country_rank is null;

----------------------------------------------

--channel_type_rank
select channel_type_rank from
['YouTubeStatistics$']
where channel_type_rank IS NULL

select convert(int,AVG(channel_type_rank)) 
from ['YouTubeStatistics$'];

update ['YouTubeStatistics$']
set channel_type_rank = 745 
where channel_type_rank is null;

----------------------------------------------

--video_views_for_the_last_30_days
select video_views_for_the_last_30_days from
['YouTubeStatistics$']
where video_views_for_the_last_30_days IS NULL

select convert(int,AVG(video_views_for_the_last_30_days)) 
from ['YouTubeStatistics$'];

update ['YouTubeStatistics$']
set video_views_for_the_last_30_days = 175610284 
where video_views_for_the_last_30_days is null;

----------------------------------------------

--video_views_for_the_last_30_days

select subscribers_for_last_30_days from
['YouTubeStatistics$']
where subscribers_for_last_30_days = 'nan'

update ['YouTubeStatistics$']
set subscribers_for_last_30_days = '0'
where subscribers_for_last_30_days = 'nan'

alter table ['YouTubeStatistics$']
alter column subscribers_for_last_30_days int;

----------------------------------------------

--created_year
alter table ['YouTubeStatistics$']
alter column created_year int;

select created_year from
['YouTubeStatistics$']
where created_year IS NULL

select convert(int,AVG(created_year)) 
from ['YouTubeStatistics$'];

update ['YouTubeStatistics$']
set created_year = 2012 
where created_year is null;

alter table ['YouTubeStatistics$']
drop column created_month

alter table ['YouTubeStatistics$']
drop column created_date

alter table ['YouTubeStatistics$']
drop column created_month

alter table ['YouTubeStatistics$']
drop column [Gross tertiary education enrollment (%)]

alter table ['YouTubeStatistics$']
drop column [Unemployment rate]

alter table ['YouTubeStatistics$']
drop column Urban_population

----------------------------------------------

--Population

select Population from ['YouTubeStatistics$']
where Population is null;

select convert(int,AVG(Population))
from ['YouTubeStatistics$']

update ['YouTubeStatistics$']
set Population = 430387266
where Population is null;

----------------------------------------------

--Longitude and Latitude

select Longitude from ['YouTubeStatistics$']
where Longitude is null;

select AVG(Longitude)
from ['YouTubeStatistics$']

update ['YouTubeStatistics$']
set Longitude = -14.1281464334862
where Longitude is null;


select Latitude from ['YouTubeStatistics$']
where Latitude is null;

select AVG(Latitude)
from ['YouTubeStatistics$']

update ['YouTubeStatistics$']
set Latitude = 26.6327828016056
where Latitude is null;

----------------------------------------------




select * from ['YouTubeStatistics$'];




