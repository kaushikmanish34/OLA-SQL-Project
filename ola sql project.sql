create database OLA;
use OLA;

#1 retrive all sucessfull bookings

create view sucessfull_bookings as
select * from bookings
where booking_status= "success";

#2 find the average ride distance for each vechile type

create view Avg_ride_distance as
select vehicle_type, Avg(ride_distance) from bookings
group by vehicle_type;

#3 get the total no. of canceled rides by customers

create view Customer_Canceled_rides as
select count(canceled_rides_by_customer) from bookings;
select count(*) from bookings
where booking_status = 'canceled by customer';

#4 list of top 5 customer who booked highest number of rides 

create view Top_5_customer as
select customer_id , count(booking_id) from bookings
group by customer_id
order by count(booking_id) desc
limit 5;
select * from top_5_customer;

#5 get the no. of rides canceled by drivers due to personal reason

create view canceled_by_driver as
select count(*) from bookings
where canceled_rides_by_driver ="personal & car related issue";

#6 find the max and min driver ratings for prime sedan bookings

create view max_min_driver_rating as
select max(driver_ratings),min(driver_ratings) from bookings
where vehicle_type = "prime sedan";

#7 retrive all rides where payment was made using UPI

create view payment_upi as
select * from bookings
where payment_method = "UPI";

#8 find the average customer rating per vechicle type

create view customer_rating_avg as
select vehicle_type ,avg(customer_rating) from bookings
group by vehicle_type ;

#9 calculate the total booking value of rides completed sucesfully

create view total_booking_value as
select sum(booking_value) from bookings
where booking_status ="success";

#10 list all the incomplete rides along with the reason

create view incomplete_rides as 
select booking_id, incomplete_rides_reason from bookings
where incomplete_rides ="yes";

