# 🏨 Hotel Management System (SQL Project)

This project is a fully-featured **Hotel Management System** built using MySQL. It includes database design, extensive sample data, advanced SQL queries, triggers, stored procedures, and views to manage room bookings, customers, employees, payments, services, and feedback.

---

## 📁 Project Structure

- `hotel_management.sql`: Full SQL script with database schema, sample data, 35+ queries, triggers, procedures, and views.

---

## 🗂️ Database Schema

**Database**: `hotel_management_system`

### Tables
- `room`: Room info, availability, pricing, type.
- `customer`: Customer records with ID verification.
- `booking`: Booking records, check-in/out details.
- `payment`: Payment status, method, amount.
- `employee`: Hotel employee data and roles.
- `service`: List of hotel services and prices.
- `service_usage`: Services used by customers during bookings.
- `feedback`: Feedback and ratings from customers.

---

## 🔢 Sample Data

- 50+ rooms
- 50+ customers
- 50+ bookings
- 50+ payment records
- 50 employees across departments
- 14 services and 30+ service usage logs
- 50 feedback entries

---

## ✅ Features Implemented

### ✔️ Queries (40+ scenarios)
- Available and unoccupied room listings
- Room booking, payment, and customer details
- Revenue reports by room, customer, and service
- Feedback analysis (positive/negative)
- Customer history, frequent rooms, and average stay duration
- Search/filter staff by position or department

### ⚙️ Triggers
- `updated_room_availability`: Auto-update room status on booking
- `calculated_price_before_insert`: Calculate booking total dynamically
- `update_room_status_checkout`: Free rooms after checkout

### 🛠️ Stored Procedures
- `monthly_report(month, year)`: Generate monthly booking and revenue report

### 👁️ Views
- `customer_booking_details`: Simplifies queries on customer and booking info

---

## 📊 Reports & Analytics

- Total hotel revenue
- Service-wise revenue breakdown
- Room occupancy trends
- Pending payments report
- Customer-wise total amount paid
- Room pricing categories

---

## 💻 How to Run

1. Clone this repo or download the `.sql` file.
2. Import `hotel_management.sql` into MySQL Workbench or any compatible DB tool.
3. Execute the script to create the database, tables, and insert all data.
4. Use the provided queries, triggers, and procedures for interaction.

---

## 📈 Extensions (Ideas)

- Add a user interface with PHP/Flask/Node.js
- Implement admin vs. staff role permissions
- Integrate SMS/email for bookings
- Room cancellation and waitlist system
- Daily housekeeping and maintenance modules

---

## 🙌 Credits

Developed as part of an academic/portfolio project to demonstrate advanced SQL capabilities and hotel system modeling.

---

## 📜 License

This project is released under the MIT License.

