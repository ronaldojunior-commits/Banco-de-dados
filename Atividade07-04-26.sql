use sakila;

select * from customer;

select first_name, last_name from customer;

select * from film where length > 120;

select * from film where release_year = 2006;

select * from customer where active = 1;

select r.rental_id, c.first_name, c.last_name
from rental r
join customer c on r.costumer_id = c.costumer_id;

select c.first_name, c.last_name, p.amount
from payment p
join customer c on p.costumer_id = c.customer_id;

select c.first_name, c.last_name, f.title
from rental r
join customer c on r.customer_id = c.customer_id
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id;

select s.first_name, s.last_name, st.store_id
from staff s
join store st on s.store_id = st.store_id;

select f.tittle, c.name as category
from film f
join film_category fc ON f.film_id = fc.film_id
join category c on fc.category_id = c.category_id;

select count(*) as total_clientes from customer;

select sum(amount) as total_pago from payment;

select avg(amount) as media_pagamento from payment;

select c.name, count(*) as total_filmes
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
group by c.name;

select c.first_name, c.last_name, count(*) as total_alugueis
from rental r
join costumer c on r.costumer_id = c.costumer_id
group by c.customer_id
order by total_alugueis desc
limit 1;
