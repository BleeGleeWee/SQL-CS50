
# 🐍 Week 6 — Don't Panic (Python Integration)

This folder contains my solution to the **“Don’t Panic (Python Edition)”** challenge from **Week 6** of [CS50’s Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

This assignment extends the original “Don’t Panic” SQL challenge by integrating Python, focusing on how **scripts can interact with databases** to simulate real-world system updates, breaches, or recoveries.

---

## 📁 Files Overview

| File          | Description                                                        |
|---------------|--------------------------------------------------------------------|
| `dont-panic.db` | SQLite database used for the challenge                            |
| `hack.py`     | Python script to simulate a "hack" or unauthorized modification    |
| `reset.sql`   | SQL script to revert the database back to its original state       |
| `ReadMe.md`   | This documentation file                                             |

---

## 💡 Project Summary

This task simulates a data integrity challenge:

- A "hack" occurs (via `hack.py`) altering or corrupting parts of a database  
- The database must then be **restored using SQL logic** (via `reset.sql`)  
- It tests your ability to **automate**, **detect**, and **reverse** changes using scripts and SQL  

---

## ⚙️ How It Works

1. **Run `hack.py`** to simulate a breach or data corruption.
2. Use SQL tools (or the provided `reset.sql`) to **restore** the database.
3. Ensure all tables and values are returned to their original correct states.

---

## 🧠 Concepts Practiced

- **Python-SQL integration** using the `sqlite3` module  
- Automated data manipulation and simulation scripting  
- Backup and recovery strategy using SQL  
- Ensuring **data integrity** in scalable systems  

---

## 🛠️ Requirements

- Python 3.x  
- SQLite3 (pre-installed with Python)  
- Optionally: [DB Browser for SQLite](https://sqlitebrowser.org/)

---

## 🔍 Example Usage

```bash
# Simulate the hack
python hack.py

# Open dont-panic.db to see changes

# Restore database using:
sqlite3 dont-panic.db < reset.sql
````

---

## 👩‍💻 Author

**Shyamanjali Nanda**
GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)
Course: CS50’s SQL — Week 6
Date: June 2025

---

> “Don’t panic — restore, refactor, and recover.”
