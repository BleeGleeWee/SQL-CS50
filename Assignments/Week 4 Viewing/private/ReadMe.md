
# 🔒 Week 4 — Private (Data Privacy with Views)

This folder contains my solution to the **“Private”** problem set from **Week 4** of [CS50’s Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The assignment focuses on protecting **sensitive personal data** by using SQL views to **restrict access** to private fields — a critical concept in real-world database security and compliance.

---

## 📁 Files Overview

| File          | Description                                               |
|---------------|-----------------------------------------------------------|
| `private.db`  | SQLite database with sensitive user information           |
| `private.sql` | SQL script that creates views to protect private fields   |
| `ReadMe.md`   | This documentation file                                   |

---

## 🔐 Problem Summary

You are given a database containing sensitive information such as:

- User names and IDs  
- Contact details (e.g., phone numbers, emails)  
- Personal identifiers

The goal is to build views that:

- Expose only non-sensitive fields  
- Mask or hide personal data  
- Follow best practices for **least privilege** access

---

## 🧠 Concepts Practiced

- Creating restricted **views** over sensitive tables  
- Using `SELECT` statements that **exclude or anonymize** columns  
- Structuring access controls logically in SQL  
- Understanding database-level privacy handling  

---

## 🛠️ How to Use

1. Open `private.db` in [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Execute `private.sql` to create secure views
3. Query views instead of the base tables to ensure safe access

---

## ✅ Example Use Case

Instead of this unsafe query:

```sql
SELECT * FROM users;
````

Use this secure view:
```

SELECT * FROM public_users;
```

Which shows only public-safe fields like `username` or `signup_date`, hiding email or phone number.

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)

Course: CS50’s SQL — Week 4

Date: June 2025

---

> “In databases, what you choose *not* to reveal is just as important as what you do.”

