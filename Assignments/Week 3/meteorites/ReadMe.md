# ☄️ Week 3 — Meteorites

This folder contains my solution to the **“Meteorites”** problem set from **Week 3** of [CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

In this challenge, we work with real-world meteorite landing data, practicing SQL data importing, cleaning, and querying for insights about extraterrestrial objects that have reached Earth.

---

## 📁 Files Included

| File             | Description                                               |
|------------------|-----------------------------------------------------------|
| `meteorites.csv` | Raw dataset containing meteorite landing records          |
| `import.sql`     | SQL script to import and structure the CSV into a table   |
| `meteorites.db`  | SQLite database generated from the import script          |
| `ReadMe.md`      | This documentation file                                   |

---

## 🌍 Dataset Summary

The meteorite data includes:

- Name and ID  
- Year of fall  
- Mass (in grams)  
- Classification  
- Location (latitude and longitude)

This exercise explores inconsistencies in real-world datasets and emphasizes good data hygiene and analytical querying.

---

## 🧠 Concepts Practiced

- CSV data importing using `sqlite3` or `DB Browser for SQLite`
- Data cleaning using `CAST`, `CASE`, and filtering
- Subqueries for deduplication and validation
- Grouping and aggregation to find:
  - Largest falls by mass
  - Most common meteorite classes
  - Temporal and geographical trends

---

## 🛠️ How to Use

1. Load `meteorites.db` in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Run custom queries, or re-import data using `import.sql`
3. Explore the dataset using `SELECT`, `WHERE`, `GROUP BY`, and `ORDER BY`

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 3  
Date: June 2025

---

> “Sometimes the best insights fall right from the sky — if you know how to query them.”

