-- 1.
SELECT first_name, last_name, district
FROM customer
RIGHT JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

-- 2.
SELECT amount, first_name, last_name
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99

-- 3.
SELECT first_name, last_name, customer_id
FROM customer
WHERE customer_id IN (
  SELECT customer_id
  FROM payment
  GROUP BY customer_id
  HAVING SUM(amount) > 175
);

-- 4.
SELECT first_name, last_name
FROM customer
RIGHT JOIN address
ON customer.address_id = address.address_id
RIGHT JOIN city
ON address.city_id = city.city_id
RIGHT JOIN country
ON city.country_id = country.country_id
WHERE country.country = 'Nepal';

-- 5.
SELECT COUNT(staff_id) FROM rental WHERE staff_id = 1;
SELECT COUNT(staff_id) FROM rental WHERE staff_id = 2;
SELECT count(rental_id) FROM rental;
-- Answer: staff_id 1 had the most

-- 6.
SELECT DISTINCT rating FROM film;
SELECT COUNT(film_id) FROM film WHERE rating = 'NC-17'; --209
SELECT COUNT(film_id) FROM film WHERE rating = 'G'; -- 178
SELECT COUNT(film_id) FROM film WHERE rating = 'PG-13'; --223
SELECT COUNT(film_id) FROM film WHERE rating = 'PG'; --194
SELECT COUNT(film_id) FROM film WHERE rating = 'R'; --196 


-- 7.

-- 8.