show tables;
# to get the id value of the first 5 clients 
select client_id from bank.client
where district_id=1 limit 5;

#the last client where district_id equals to 72
#to find out the last client we need to use the max function (maximum id, latest client)
select max(client_id) from bank.client
where district_id =72;

#select the 3 lowest loan amounts 
select amount from bank.loan
order by amount asc
limit 3;

#Possible values for status alphabetically 
select distinct (status) from bank.loan
order by status asc;

#loan id of the highest payment 
select loan_id from bank.loan
order by (payments) desc limit 1;

#the lowest 5 account ids and the corresponding amount 
select account_id, amount from bank.loan
order by (account_id) limit 5;

#account_ids with the lowest loan amount and have a loan duration of 60 
select account_id from bank.loan
where duration=60
order by (amount) asc;

#unique values of k_symbol in order
select distinct(k_symbol) from bank.order
order by k_symbol asc;

#order_ids of the client with the account id 34
select distinct (order_id) from bank.order 
where account_id=34;

#account_id for orders between order id 29540 and 29560 
select distinct(account_id) from bank.order
where order_id<=29560 and order_id>=29540;

#individual amounts that were sent to (account_to) id 30067122
select distinct(amount) from bank.order
where account_to= 30067122;

#show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
select distinct trans_id, date, type, amount from bank.trans
where account_id=793
order by date desc;

#n the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
select  district_id, count(client_id) from bank.client
where district_id<10;

#how many cards exist for each type 
select distinct type,count(type) from bank.card
order by type

select distinct count(type) from bank.card






