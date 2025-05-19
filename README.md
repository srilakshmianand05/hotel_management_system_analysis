# hotel_management_system_analysis
SQL-based Hotel Management System with bookings, payments, feedback, triggers, procedures &amp; analytics.
📋 Overview
This project is a complete Hotel Management System implemented using MySQL. It includes database design, data population, complex SQL queries, triggers, procedures, and views. The system helps manage hotel operations such as room bookings, customer management, payments, service usage, employee tracking, and feedback.

🗂️ Database Structure
Database: hotel_management_system

Tables
room – Stores room details including type, floor, price, and availability.

customer – Customer personal and ID information.

booking – Handles room booking information.

payment – Tracks payments for bookings.

employee – Stores staff details, job positions, and salaries.

service – Available hotel services and prices.

service_usage – Logs which services are used in which bookings.

feedback – Customer feedback and ratings.

🧾 Sample Data Inserted
50+ rooms, 50 customers, 50+ bookings, 50 payments, 50 employees, 14 services, 30+ service usage records, 50 feedback entries.

All tables are fully populated with realistic test data.

📊 Core Features Implemented
✅ Queries (40+ Scenarios)
Retrieve available/unoccupied rooms

Revenue reports and analytics

Booking/payment summaries

Frequent room usage

Customer feedback (including negative review filter)

Staff by position or department

Services used and their revenue contributions

Customer stay history

Bill generation with total room + service charge

Subqueries, joins, and aggregate functions

⚙️ Triggers
updated_room_availability – Updates room status to unavailable on booking insert.

calculated_price_before_insert – Auto-calculates total price before inserting a booking.

update_room_status_checkout – Frees up a room after checkout date is reached.

🛠️ Stored Procedure
monthly_report(month, year) – Generates a full report of bookings, durations, and revenue for a given month/year.

👁️ Views
customer_booking_details – View combining customer and booking information.

🔎 Highlights
Data-Driven System with strong relational integrity and foreign keys

Triggers & Logic-Based Pricing ensures automation

Dynamic Reports for business insights and decision-making

Procedures & Views enhance modularity and reusability

Rich Query Set covering 35+ real-world hotel management scenarios

💻 How to Use
Execute the hotel_management.sql script in a MySQL environment.

Review the populated tables.

Run the queries, triggers, procedures, and views as needed.

Extend the system with additional scenarios or integrate with an application front-end.

🧠 Suggestions for Extension
Add user roles and access control

Implement a front-end UI (PHP, Python Flask, etc.)

Introduce booking cancellation workflows

Add email/SMS notification hooks

Include room image gallery or inventory management

