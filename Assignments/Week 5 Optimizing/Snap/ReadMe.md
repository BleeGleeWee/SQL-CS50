
# 📸 Week 5 — Snap (Query Optimization)

This folder contains my solution to the **“Snap”** problem set from **Week 5** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The challenge simulates a social media platform scenario where large datasets slow down query performance. The objective is to **analyze**, **optimize**, and **index** queries for speed and efficiency.

---

## 📁 Files Overview

| File      | Description                              |
|-----------|------------------------------------------|
| `1.sql`   | Original query #1 and its optimization    |
| `2.sql`   | Original query #2 and its optimization    |
| `3.sql`   | Original query #3 and its optimization    |
| `4.sql`   | Original query #4 and its optimization    |
| `5.sql`   | Original query #5 and its optimization    |
| `snap.db` | SQLite database representing Snap data    |
| `ReadMe.md` | This documentation file                |

---

## ⚡ Optimization Strategy

Each `.sql` file contains:

- The **original query** that runs slowly on large data
- The **optimized version**, often using:
  - Indexes (`CREATE INDEX`)
  - Rewritten logic for `JOIN` or `WHERE` clauses
  - Use of subqueries or temporary tables
- Optionally: `EXPLAIN` analysis to show performance difference

---

## 🧠 Concepts Practiced

- **Query analysis with `EXPLAIN` and `EXPLAIN QUERY PLAN`**
- **Indexing** to reduce full table scans
- Understanding **how query planners operate**
- **Minimizing join complexity** and redundant filtering
- Writing **efficient SQL** without sacrificing correctness

---

## 🛠️ How to Use

1. Open `snap.db` in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Run each `1.sql` to `5.sql` to observe performance and results
3. Use `EXPLAIN` on both original and optimized queries to compare

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 5  
Date: June 2025

---

> “The best queries are not just correct — they’re also fast.”
