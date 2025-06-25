# 📦 Week 1 — Packages, Please

This folder contains my solution for the **“Packages, Please”** problem set from **Week 1** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The task involves querying `packages.db`, a relational database that tracks the flow of packages between senders and recipients across multiple locations.

---

## 📁 Files Included

| File         | Description                                    |
|--------------|------------------------------------------------|
| `packages.db`| SQLite database file with all required tables  |
| `log.sql`    | SQL query log containing all the problem solutions |
| `answers.txt`| Plaintext answers as output from `log.sql` queries |
| `ReadMe.md`  | This documentation file                        |

---

## 🗃️ Schema Overview

The database `packages.db` contains multiple tables representing entities like:
- **senders**
- **recipients**
- **packages**
- **locations**
- **tracking events**

These tables are linked via **foreign keys**, making it ideal for practicing multi-table relational queries.

---

## 🧠 SQL Concepts Practiced

- Writing multi-table queries using `JOIN`
- Tracking relationships between senders, recipients, and packages
- Using `GROUP BY`, `HAVING`, and aggregation functions (`COUNT`, `MAX`, etc.)
- Filtering and ordering with `WHERE` and `ORDER BY`

---

## ✅ Goals

- Understand how foreign keys connect real-world entities
- Extract meaningful insights across related tables
- Develop clean and efficient SQL queries for logistics data

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 1  
Date: June 2025

---

> “In logistics, as in databases, success depends on smooth connections.”

