
## OLA Ride Sales Analysis – SQL Project

## Project Overview

This project focuses on analyzing OLA ride booking data using SQL.
The objective was to solve real-world business queries such as customer behavior, booking trends, cancellations, payments, and ratings.
By writing SQL queries and creating views, I extracted insights that can help ride-hailing businesses understand performance, improve services, and optimize revenue.

## 🛠 Tech Stack

Database: MySQL

Language: SQL

## Concepts Used: Views, Group By, Order By, Aggregations, Filtering, Joins

📊 Problem Statements Solved

1️⃣ Retrieve all successful bookings

Created a view to fetch all bookings where booking_status = 'success'.

2️⃣ Find the average ride distance for each vehicle type

Grouped rides by vehicle type and calculated the average distance.

3️⃣ Get the total number of canceled rides by customers

Counted all rides where booking_status = 'canceled'.

4️⃣ List the Top 5 customers who booked the highest number of rides

Grouped by customer_id, ordered by ride count, and limited to Top 5.

5️⃣ Get the number of rides canceled by drivers due to personal reasons

Filtered rides with cancellation reason = "personal".

6️⃣ Find maximum and minimum driver ratings for Prime Sedan bookings

Selected MAX and MIN ratings where vehicle_type = 'Prime Sedan'.

7️⃣ Retrieve all rides where payment was made using UPI

Created a view for bookings where payment_method = 'UPI'.

8️⃣ Find the average customer rating per vehicle type

Grouped by vehicle type and calculated AVG(customer_rating).

9️⃣ Calculate the total booking value of rides completed successfully

Summed up booking values where booking_status = 'success'.

🔟 List all incomplete rides with reason

Selected booking IDs where rides were incomplete, along with reasons.

## ✅ Key Insights

Most revenue comes from successfully completed rides.

Cancellation trends differ between customers and drivers.

Prime Sedan rides have the widest rating range.

UPI is a popular digital payment method.

Top customers significantly contribute to total bookings.

## 🚀 Key Learnings

Writing optimized SQL queries for analysis.

Using views for reusability and reporting.

Turning raw ride data into meaningful insights.

