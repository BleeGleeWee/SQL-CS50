

<h1 align="center"> SQL-CS50 </h1>

<h1 align="center">  Campus Connect - Event Management Database 🎓 </h1>

![diagram](https://github.com/user-attachments/assets/16ffed56-6078-47e9-a902-30f5ef062100)
<h3 align= "center"> Entity-Relationship Diagram of Campus Connect </h3>


## Overview
**Campus Connect** is a SQL-based event management system tailored for educational institutions. It helps track student participation in campus events, manage clubs, venues, and organizers, and collect feedback—all within a well-structured relational database.


## Features
- 📊 **Student Management**: Maintain student profiles with unique roll numbers.
- 🏛️ **Club Organization**: Manage campus clubs and their respective events.
- 🗓️ **Event Scheduling**: Schedule events with associated dates, venues, and organizers.
- ✅ **Attendance Tracking**: Record which students attended or missed events.
- ⭐ **Feedback System**: Allow students to rate and comment on events.
- 📈 **Analytics Views**: Gain insights through prebuilt SQL views like top-rated events, participation stats, and club performance.



## Database Schema

### Tables
| Table Name   | Description                            |
|--------------|----------------------------------------|
| `Students`   | Stores student details                 |
| `Clubs`      | Contains data about student clubs      |
| `Venues`     | Lists event venues on campus           |
| `Organizers` | Tracks event organizers and contacts   |
| `Events`     | Stores event information               |
| `Attendance` | Tracks student attendance              |
| `Feedback`   | Stores event ratings and comments      |

### Views
| View Name            | Purpose                                           |
|----------------------|---------------------------------------------------|
| `TopRatedEvents`     | Shows events with an average rating ≥ 4.0         |
| `StudentParticipation` | Ranks students based on attendance count        |
| `ClubEventCount`     | Displays number of events and avg rating per club |



## Tech Stack
- **SQLite**: Lightweight, file-based relational database engine
- **Mermaid.js**: For ER diagram creation
- **Bash**: Script automation for database initialization


## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/campus-connect.git
   cd campus-connect
   ```

2. **Initialize the database:**

   ```bash
   sqlite3 campus_connect.db < schema.sql
   ```

3. **Run example queries:**

   ```bash
   sqlite3 campus_connect.db < queries.sql
   ```

## Usage Examples

```sql
-- 🔍 Find upcoming events
SELECT * FROM Events WHERE event_date >= DATE('now');

-- 🧑‍🎓 Get top 5 most active students
SELECT s.name, COUNT(a.event_id) AS events_attended
FROM Students s
JOIN Attendance a ON s.id = a.student_id
WHERE a.status = 'present'
GROUP BY s.id
ORDER BY events_attended DESC
LIMIT 5;

-- 📊 View club performance analytics
SELECT * FROM ClubEventCount ORDER BY avg_rating DESC;
```

## Project Structure

```
campus-connect/
├── schema.sql          # Database schema and optional sample data
├── queries.sql         # Example SQL queries for demo/testing
├── setup_db.sh         # Bash script for quick setup
├── diagram.png         # ER diagram of the database
└── README.md           # Project documentation
```

## Troubleshooting

* **SQLite not installed?**
  Visit [sqlite.org/download.html](https://sqlite.org/download.html) to install SQLite for your OS.

* **Database not created?**
  Make sure `schema.sql` exists in your current directory before running the setup commands.

* **Permission issues on script?**
  Run: `chmod +x setup_db.sh`


## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

> Developed as part of Harvard's [CS50 SQL](https://cs50.harvard.edu/sql/) course.

