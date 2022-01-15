-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini 
-- birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

select city,country from city ci left join country c on ci.country_id = c.country_id;

-- customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name 
-- ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

select payment_id , first_name , last_name from customer c right join payment p on c.customer_id=p.customer_id;

-- customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name 
-- ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

select rental_id , first_name , last_name full join rental on c.customer_id=r.customer_id;
