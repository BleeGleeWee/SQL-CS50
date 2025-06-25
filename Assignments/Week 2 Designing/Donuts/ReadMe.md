# 🍩 Week 2 — Donuts (Inventory & Order System Schema)

This folder contains my solution for the **“Donuts”** problem set from **Week 2** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The task involves designing a relational database schema for a fictional donut shop — modeling its products, customers, and orders.

---

## 📁 Files Included

| File         | Description                                   |
|--------------|-----------------------------------------------|
| `schema.sql` | SQL script to create all necessary tables     |
| `ReadMe.md`  | This documentation file                       |

---

## 🧱 Schema Overview

The database schema simulates a simple inventory and order system for a donut business. It includes:

- **`donuts`**: Catalog of donut types, names, prices, flavors  
- **`customers`**: Customer records and contact information  
- **`orders`**: Order metadata (customer, timestamp, status)  
- **`order_items`**: Bridge table for many-to-many relationship between orders and donuts  
- **(Optional)**: Tables for ingredients, staff, or suppliers

---

## 🔧 Features and Relationships

- **One-to-many**: Customers to orders  
- **Many-to-many**: Orders to donuts (via `order_items`)  
- Enforces data integrity with `FOREIGN KEY`, `NOT NULL`, and `CHECK` constraints  
- Uses appropriate data types and default values

---

## 🧠 Concepts Practiced

- Table creation and schema planning  
- Handling many-to-many relationships  
- Relational integrity via keys and constraints  
- Business logic modeling using database design

---

## 🛠️ How to Use

1. Open [DB Browser for SQLite](https://sqlitebrowser.org/) or any SQLite tool  
2. Execute `schema.sql` to create the schema  
3. Insert mock data and write test queries to simulate business logic

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 2  
Date: June 2025

---

> “Behind every great donut is a great database keeping track of it.”

