# 🧮 Week 4 — Census (SQL Views)

This folder contains my solution to the **“Census”** problem set from **Week 4** of [CS50’s Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The challenge focuses on building **SQL views** that summarize and analyze census data across different regions — helping simplify insights into population trends, urban/rural breakdowns, and district-level comparisons.

---

## 📁 Files Overview

| File               | Description                                                   |
|--------------------|---------------------------------------------------------------|
| `census.db`        | SQLite database containing raw census data                    |
| `total.sql`        | View to calculate total population                            |
| `by_district.sql`  | View summarizing population data per district                 |
| `most_populated.sql` | View to identify the most populated districts                |
| `rural.sql`        | View highlighting rural areas and their demographics          |
| `ReadMe.md`        | This documentation file                                       |

---

## 🧠 Concepts Practiced

- Creating and querying **SQL views**
- Aggregation: `SUM`, `GROUP BY`, `MAX`, `ORDER BY`
- Simplifying large census queries into modular logic
- Applying filters to population classification (e.g., rural vs. urban)

---

## 🛠️ How to Use

1. Open `census.db` in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Execute the `.sql` files to create views
3. Query each view with `SELECT * FROM view_name;` to explore results

---

## 💡 Example Use Cases

- Quickly view **total population** stats
- Identify **districts with the highest population**
- Compare **urban vs. rural** demographics
- Use views as a basis for data dashboards or reports

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 4  
Date: June 2025

---

> “Data only makes sense when seen through the right lens — views make that lens reusable.”

