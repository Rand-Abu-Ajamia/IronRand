#how many copies are the film hunchback impossible exists in the inventory system

SELECT 
    COUNT(inventory_id)
FROM
    sakila.inventory
WHERE
    film_id IN (SELECT 
            film_id
        FROM
            sakila.film
        WHERE
            title = 'Hunchback Impossible');

SELECT 
    length, title
FROM
    sakila.film
WHERE
    length > (SELECT 
            AVG(length)
        FROM
            sakila.film);

#Use subqueries to display all actors who appear in the film Alone Trip
SELECT 
    first_name, last_name
FROM
    sakila.actor
WHERE
    actor_id IN (SELECT 
            actor_id
        FROM
            sakila.film_actor
        WHERE
            film_id IN (SELECT 
                    film_id
                FROM
                    sakila.film
                WHERE
                    title = 'AloneTrip'));
