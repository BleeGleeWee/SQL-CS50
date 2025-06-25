# 🌐 Week 2 — Connect (Social Network Schema Design)

This folder contains my solution for the **“Connect”** problem set from **Week 2** of [CS50’s Introduction to Databases with SQL](https://cs50.harvard.edu/sql/).

The task was to design a relational database schema for a simplified social networking platform — modeling users, friendships, posts, and interactions.

---

## 📁 Files Included

| File         | Description                                   |
|--------------|-----------------------------------------------|
| `schema.sql` | SQL script defining the full database schema  |
| `ReadMe.md`  | This documentation file                       |

---

## 🧱 Schema Overview

The **Connect** database is designed to support core features of a social network. It includes:

- **`users`**: Stores user profile information  
- **`friendships`**: Manages user connections (many-to-many using a bridge table)  
- **`posts`**: Stores posts made by users with timestamps  
- **`likes`**: Tracks which users liked which posts  
- **`comments`** *(optional)*: Allows users to comment on posts

Each table is created using proper **primary keys**, **foreign keys**, and **data type choices** to maintain relational integrity and reflect real-world interaction flows.

---

## 🧠 Concepts Applied

- **Database normalization**  
- **One-to-many** and **many-to-many** relationships  
- **Foreign key constraints**  
- Use of `NOT NULL`, `CHECK`, and `UNIQUE`  
- Modeling interaction data (posts, likes, friendships)

---

## 🔍 How to Use

1. Open a database tool like [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Execute `schema.sql` to build the `Connect` schema
3. Insert sample data and run test queries to explore its functionality

---

## 👩‍💻 Author

GitHub: [BleeGleeWee](https://github.com/BleeGleeWee)  
Course: CS50’s SQL — Week 2  
Date: June 2025

---

> “Designing a social network is more than connections — it’s understanding relationships through data.”
