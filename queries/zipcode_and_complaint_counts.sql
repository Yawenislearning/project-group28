
select zipcode,count(*)as n_complaint
from nyc_311
where 1=1
AND date<='2023-09-30'
AND date>='2022-10-01'
group by zipcode
order by 2 DESC
