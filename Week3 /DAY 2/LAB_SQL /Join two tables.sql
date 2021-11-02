#1 Which actor has appeared in the most films?

SELECT 
    actor.first_name,
    actor.last_name,
    film_actor.actor_id,
    COUNT(film_actor.film_id) AS film_count
FROM
    actor
        INNER JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY film_count DESC
LIMIT 1;

#2 Most active customer (the customer that has rented the most number of films)
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    rental.customer_id,
    COUNT(customer.customer_id) AS rental_count
FROM
    customer
        INNER JOIN
    rental ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id
ORDER BY rental_count DESC
LIMIT 1;

#3 List number of films per category.
SELECT 
    category.category_id, category.name, film_category.category_id
    from film_category;
inner join
film_category on film_category.category_id=category.category_id 
group by film_category.category_id;
