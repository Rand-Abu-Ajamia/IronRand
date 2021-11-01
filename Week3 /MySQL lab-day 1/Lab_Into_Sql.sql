# showing all tables in the database 
show tables;      

#all columns in actor table 
SELECT * FROM sakila.actor; 
#all columns in city table 
select * from sakila.city;     
#selecting film titles 
select title from sakila.film;  
 
#selecting film titles 
select distinct (name) from sakila.language as language;   

#to find out how many stores does the company have, we need to use the count function 
select count(store_id) from sakila.store;

#to find out how many employees the company has , we use the count function 
select count(staff_id) from sakila.staff;

#returing the first name of the employees 
select first_name from sakila.staff;

