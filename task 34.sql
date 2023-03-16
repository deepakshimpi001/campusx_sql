##Q-1 Find out top 10 countries' which have maximum A and D values.
select a.Country,a.A,b.D from country_ab as a
inner join country_cd as b
on a.country = b.country
group by a.Country
order by a.A desc,b.D desc
limit 10;

##SELECT table1.name, table2.department, table3.address
##FROM table1
##OIN table2 ON table1.id = table2.id
##OIN table3 ON table1.id = table3.id;

select * from country_cl as a
inner join country_ab as b on a.country = b.country
inner join country_cd as c on a.country = c.country
inner join country_efg as d on a.country = d.country;

select a.Edition,a.CL,b.Region from country_cl as a
inner join country_ab as b on a.country = b.country
inner join country_cd as c on a.country = c.country
inner join country_efg as d on a.country = d.country
where a.Edition = "2022"
group by b.Region
order by a.CL desc
#limit 10