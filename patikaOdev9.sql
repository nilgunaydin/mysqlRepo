
select city, country from city join country on city.country_id=country.country_id;

select payment_id , first_name , last_name from customer c join payment p on c.customer_id = p.customer_id;

select rental_id  , first_name , last_name from customer c join rental r on c.customer_id = r.customer_id;
