
# 🎓 Week 5 — Harvard (Index Optimization)

This folder contains my solution to the **“Harvard”** problem set from **Week 5** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The task revolves around optimizing queries on a real-world academic dataset — modeled after Harvard’s course catalog — by creating and applying **indexes** for faster performance.

---

## 📁 Files Overview

| File         | Description                                           |
|--------------|-------------------------------------------------------|
| `indexes.sql`| SQL script to create optimized indexes                |
| `ReadMe.md`  | This documentation file                               |

> *Note: The corresponding Harvard database file may be in the parent folder.*

---

## 🎯 Objective

Improve query performance by analyzing slow SQL queries and then:

- Creating **single-column** and **composite indexes**
- Choosing the right **indexing strategy** based on query structure
- Validating improvements using `EXPLAIN QUERY PLAN`

---

## 🧠 Concepts Practiced

- `CREATE INDEX` and `DROP INDEX`
- Selecting effective columns for indexing
- Understanding the **cost of full table scans**
- Leveraging indexes for `JOIN`, `WHERE`, and `ORDER BY`
- Interpreting query plans to guide optimization

---

## 🛠️ How to Use

1. Load the Harvard course catalog database (`harvard.db`) in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Execute `indexes.sql` to apply optimizations
3. Run queries with and without indexes using `EXPLAIN` to compare performance

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 5  
Date: June 2025

---

> “Optimization isn't just about speed — it's about precision in design.”
