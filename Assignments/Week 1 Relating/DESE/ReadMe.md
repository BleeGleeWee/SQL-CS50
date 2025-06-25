# 🏫 Week 1 — DESE

This folder contains SQL solutions for the **"DESE"** problem set from **Week 1** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

You’ll be working with `dese.db`, a relational database containing school performance data collected by the **Department of Elementary and Secondary Education (DESE)**.

---

## 📁 Files Overview

Each `.sql` file corresponds to a specific query designed to explore student demographics, test results, and school attributes by leveraging relational joins.

| File      | Task Description                                 |
|-----------|--------------------------------------------------|
| `1.sql`   | List all schools                                 |
| `2.sql`   | Join schools with MCAS test results              |
| `3.sql`   | Retrieve schools by performance thresholds       |
| `4.sql`   | Calculate average test scores                    |
| `5.sql`   | Find schools in specific districts               |
| `6.sql`   | Match schools and performance by grade level     |
| `7.sql`   | Filter schools based on number of students       |
| `8.sql`   | Join school types and enrollment stats           |
| `9.sql`   | Use `GROUP BY` for district-wide summaries       |
| `10.sql`  | Aggregate math/reading scores per grade          |
| `11.sql`  | Query for underperforming schools                |
| `12.sql`  | Compare public vs. private school performance    |
| `13.sql`  | Bonus: Advanced multi-condition JOIN + filters   |

---

## 🗃️ Database: `dese.db`

- **Tables include**:  
  - `schools`  
  - `enrollment`  
  - `results`  
  - `districts`  
- **Relationships**:  
  Foreign keys connect schools to performance data and enrollment metrics.

You can explore the schema using [DB Browser for SQLite](https://sqlitebrowser.org/).

---

## 🧠 Key Concepts

- Multi-table joins (`INNER JOIN`, `LEFT JOIN`)
- Filtering and sorting joined datasets
- Grouping with `GROUP BY`, `HAVING`
- Performing analytics on educational data
- Designing readable, optimized queries

---

## 👩‍💻 Author

**Shyamanjali Nanda**  
GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 1  
Date: June 2025

---

> “Education is not just about learning — it's also about understanding what the data tells us.”
