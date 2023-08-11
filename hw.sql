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
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id;

-- 6.
SELECT COUNT(film_id), rating FROM film GROUP BY rating;

-- 7.
SELECT DISTINCT first_name, last_name, customer_id
FROM customer
WHERE customer_id IN (
  SELECT customer_id
  FROM payment
  WHERE amount > 6.99
);

-- 8.
SELECT count(rental_id) FROM payment WHERE amount <= 0;
-- 14565