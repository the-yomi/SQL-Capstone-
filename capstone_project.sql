-- create table capstone_table(sales_id integer not null, sales_rep varchar(50), emails varchar(50), brands varchar(50),
-- plant_cost integer, unit_price integer, quantity integer,product_cost integer,profit integer, countries varchar(50),
-- region varchar(50), months varchar(50), years integer)


-- SELECT * FROM capstone_table;

-- SESSION A

SELECT sum(profit) FROM capstone_table


SELECT DISTINCT countries FROM capstone_table 

SELECT sum(profit) profits FROM capstone_table
WHERE countries NOT IN ('Ghana', 'Nigeria' )
UNION
SELECT sum(profit) FROM capstone_table 
WHERE countries IN ('Ghana', 'Nigeria')




SELECT countries, sum(profit) Total_profit FROM capstone_table
WHERE years = 2019
GROUP BY countries
ORDER BY Total_profit DESC




SELECT years, sum(profit) FROM capstone_table
GROUP BY years
ORDER BY sum(profit) DESC





SELECT months, years, sum(profit) total FROM capstone_table
GROUP BY months, years
ORDER BY total ASC LIMIT 1






SELECT sum(profit) total, countries FROM capstone_table
WHERE years = 2018 AND months = 'December'
GROUP BY countries
ORDER BY total ASC LIMIT 1





SELECT months, sum(profit) total_profit FROM capstone_table
WHERE years = 2019
GROUP BY months
ORDER BY total_profit ASC




SELECT brands, sum(profit) total_profit FROM capstone_table
WHERE countries = 'Senegal'
GROUP BY brands
ORDER BY total_profit DESC LIMIT 1







SELECT brands, sum(Quantity) amount FROM capstone_table
WHERE countries IN ('Togo','Benin','Senegal') AND years IN (2018, 2019)
GROUP BY brands
ORDER BY amount DESC LIMIT 2




SELECT brands, sum(quantity) amount FROM capstone_table
WHERE countries = 'Ghana'
GROUP BY brands
ORDER BY amount DESC LIMIT 2



select * from capstone_table where countries = 'Nigeria' and brands not like '%malt%'
order by years






Select brands, sum(quantity) amount from capstone_table
where brands like '%malt%' and countries in ('Ghana', 'Nigeria') and years in (2018, 2019)
group by brands
order by amount desc limit 1




select brands, sum(quantity) amount from capstone_table
where countries = 'Nigeria' and years = 2019
group by brands
order by amount desc limit 1




select brands, sum(quantity) amount from capstone_table
where countries = 'Nigeria' and region = 'southsouth'
group by brands
order by amount desc limit 1




select region, months, years, sum(quantity) amount from capstone_table
where brands not like '%malt%' and countries = 'Nigeria'
group by region, months, years
order by years 




select region, sum(quantity) amount from capstone_table
where brands = 'budweiser' and countries = 'Nigeria'
group by region
order by amount desc




select region, sum(quantity) amount from capstone_table
where brands = 'budweiser' and countries = 'Nigeria' and years = 2019
group by region
order by amount desc








select countries, sum(quantity) amount from capstone_table
where brands not like '%malt%'
group by countries
order by amount desc limit 1




select sales_rep, sum(quantity) amount from capstone_table
where brands = 'budweiser' and countries = 'Senegal'
group by sales_rep
order by amount desc limit 1





select countries, sum(profit) amount from capstone_table
where years = 2019 and months in ('October', 'November', 'December')
group by countries
order by amount desc limit 1









