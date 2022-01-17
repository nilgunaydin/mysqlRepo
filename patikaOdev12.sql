select count(*) from film where length > (select avg(length) from film);

select count(*) from film where rental_rate = (select max(rental_rate) from film);

select * from film where rental_rate = (select min(rental_rate) from film) or replacement_cost=(select min(replacement_cost) from film);
 
-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


-- en fazla odeme yapan

select customer_id, count(amount) alisveris_miktari from payment 
group by customer_id 
order by alisveris_miktari desc;

-- en fazla sayida alisveris yapan 
-- Select c.customer_id,count(p.customer_id) alisveris_sayisi From payment p join customer c on  c.customer_id = p.customer_id
-- group by c.customer_id having customer.customer_id=payment.customer_id;

SELECT c.first_name, c.customer_id ,count( payment_id ) alisveris_sayisi FROM payment join customer c on  c.customer_id = payment.customer_id GROUP BY customer_id HAVING COUNT(*) order by alisveris_sayisi desc;


