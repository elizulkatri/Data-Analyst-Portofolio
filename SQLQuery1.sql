with hotels as (
Select * from dbo.['2018$']
union
select *from dbo.['2019$']
union 
select * from dbo.['2020$'])

Select * from hotels
left join dbo.market_segment$ 
on hotels.market_segment=dbo.market_segment$.market_segment
left join dbo.meal_cost$
on dbo.meal_cost$.meal=hotels.meal
