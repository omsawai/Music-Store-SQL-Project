-- Question Set 1

-- 1.	Who is the senior most employee based on job title?

select first_name , title from employee where reports_to is null ;

-- 2.	Which countries have the most Invoices?

select billing_country from invoice group by billing_country order by count(invoice_id) desc limit 1; 

-- 3.	What are top 3 values of total invoice?

select * from invoice order by total desc limit 3;

-- 4. Which city has the best customers? We would like to throw a promotional Music Festival in the city 
-- we made the most money. Write a query that returns one city that has the highest sum of invoice totals. 
-- Return both the city name & sum of all invoice totals

select billing_city , sum(total) as total_sum from invoice group by billing_city order by total_sum desc limit 1 ;

-- 5.	Who is the best customer? The customer who has spent the most money will be declared the best customer.
-- Write a query that returns the person who has spent the most money

select c.customer_id, c.first_name, c.last_name, sum(i.total) as total_sum from customer c left join invoice i on c.customer_id = i.customer_id 
group by c.customer_id order by total_sum desc limit 1 ;

-- Question Set 2
-- 1.	Write query to return the email, first name, last name, & Genre of all Rock Music listeners. 
-- employeeReturn your list ordered alphabetically by email starting with A

select c.customer_id, c.first_name , c.last_name , c.email, g.name from customer c
join invoice i on c.customer_id = i.customer_id 
join invoice_line il on i.invoice_id = il.invoice_id
join track t on il.track_id = t.track_id 
join genre g on t.genre_id = g.genre_id where g.name in ('Rock','Rock And Roll')
order by email ;

-- 2.	Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands

select ar.artist_id , ar.name , g.name , count(t.track_id) as total_count from artist ar
join album al on ar.artist_id = al.artist_id
join track t on al.album_id = t.album_id 
join genre g on t.genre_id = g.genre_id group by g.genre_id , ar.artist_id 
having g.name = 'Rock' order by total_count desc limit 10 ;

-- 3.Return all the track names that have a song length longer than the average song length. 
-- Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

select name , milliseconds from track group by track_id having milliseconds > (select avg(millis