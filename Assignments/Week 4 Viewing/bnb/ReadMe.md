
# 🏠 Week 4 — BnB (Viewing Assignment)

This folder contains my solution to the **“BnB”** problem set from **Week 4** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The task focuses on using **SQL views** to analyze and filter data from a fictional accommodation rental service — similar to Airbnb.

---

## 📁 Files Overview

Each `.sql` file defines a view to help organize, abstract, and simplify complex queries:

| File                      | Description                                                       |
|---------------------------|-------------------------------------------------------------------|
| `available.sql`           | View of all listings currently available                          |
| `frequently_reviewed.sql` | View for listings with a high number of reviews                   |
| `june_vacancies.sql`      | View showing listings with open dates in June                     |
| `no_descriptions.sql`     | View for listings missing descriptions                            |
| `one_bedrooms.sql`        | View filtering one-bedroom listings                               |
| `ReadMe.md`               | This documentation file                                           |

---

## 🧠 Concepts Practiced

- Using `CREATE VIEW` to encapsulate reusable logic
- Filtering, aggregation, and conditionals within views
- Organizing data for real-world rental platform features
- Making complex queries modular and readable

---

## 🛠️ How to Use

1. Open `bnb.db` (or your connected database) in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Execute any `.sql` file to create the corresponding view
3. Use `SELECT * FROM view_name;` to query each view and test results

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 4  
Date: June 2025

---

> “When your queries get too long, create a view and move on.”
