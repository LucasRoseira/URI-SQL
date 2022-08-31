
2602)
select name 
from customers 
where state = 'RS';;

2603)
select name, street 
from customers 
where city = 'Porto Alegre';

2604)
select id, name 
from products 
where price < 10 or price > 100 ;

2605)
select prod.name, prov.name
from products prod
inner join providers prov
on prod.id_providers = prov.id
inner join categories
on prod.id_categories = categories.id
where categories.id = 6;


2606)
select prod.id, prod.name
from products prod
inner join categories cat
on prod.id_categories = cat.id
where cat.name like 'super%';

2607)
select city
from providers
order by name desc;

2608)
select MAX(price), MIN(price)
from products;

2609)

select cat.name, sum(prod.amount)
from products prod
inner join categories cat
on prod.id_categories = cat.id
group by cat.name
order by name


2610)

select trunc( (sum(price) / MAX(id) ), 2 )
from products

2611)

select mov.id, mov.name
from movies mov
inner join genres gen
on mov.id_genres = gen.id
where gen.id = 3


2612) 

select mov.id, mov.name
from movies mov
inner join genres gen
on mov.id_genres = gen.id
where gen.description like 'Action'

2613)

select mov.id, mov.name
from movies mov
inner join prices
on mov.id_prices = prices.id
where prices.value < 2

2614)

select cust.name, ren.rentals_date
from customers cust
inner join rentals ren
on cust.id = ren.id_customers
where ren.rentals_date between '2016-09-1' and '2016-09-30'



2615)
select distinct city
from customers 

2616) 

select cust.id, cust.name
from customers cust
where cust.id  not in (select locations.id_customers from locations)

2617)

select prod.name, prov.name
from products prod
inner join providers prov
on prov.id = prod.id_providers
where prov.name like 'Ajax SA'

2618)

select prod.name, prov.name, cat.name
from products prod
inner join categories cat
on prod.id_categories = cat.id
inner join providers prov
on prod.id_providers = prov.id
where prov.name like 'Sansul SA'
and cat.name like 'Imported'


2619)

select prod.name, prov.name, prod.price
from products prod
inner join providers prov
on prod.id_providers = prov.id
inner join categories cat 
on prod.id_categories = cat.id 
where prod.price > 1000 
and cat.name like 'Super Luxury'

2620)


select cust.name, ord.id
from customers cust
inner join orders ord
on cust.id = ord.id_customers
where ord.orders_date between '01/01/2016' and '06/30/2016'

2621)

select prod.name
from products prod
inner join providers prov
on prod.id_providers = prov.id
where prov.name like '%p%'
and prod.amount between 10 and 20

