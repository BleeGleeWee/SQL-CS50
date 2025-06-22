#!/bin/bash

# Database filename
DB_NAME="campus_connect.db"

# Remove old database if exists
if [ -f "$DB_NAME" ]; then
    echo "🔁 Removing old database..."
    rm "$DB_NAME"
fi

# Create schema
echo "📦 Creating database schema..."
sqlite3 "$DB_NAME" <<EOF
-- Students table
CREATE TABLE IF NOT EXISTS Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    roll_number TEXT UNIQUE NOT NULL
);

-- Clubs table
CREATE TABLE IF NOT EXISTS Clubs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT
);

-- Venues table
CREATE TABLE IF NOT EXISTS Venues (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    location TEXT NOT NULL
);

-- Organizers table
CREATE TABLE IF NOT EXISTS Organizers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    phone TEXT
);

-- Events table
CREATE TABLE IF NOT EXISTS Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    event_date DATE NOT NULL,
    club_id INTEGER NOT NULL,
    venue_id INTEGER NOT NULL,
    organizer_id INTEGER NOT NULL,
    FOREIGN KEY (club_id) REFERENCES Clubs(id),
    FOREIGN KEY (venue_id) REFERENCES Venues(id),
    FOREIGN KEY (organizer_id) REFERENCES Organizers(id)
);

-- Attendance table
CREATE TABLE IF NOT EXISTS Attendance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    status TEXT CHECK(status IN ('present', 'absent')) NOT NULL DEFAULT 'present',
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (event_id) REFERENCES Events(id),
    UNIQUE(student_id, event_id)
);

-- Feedback table
CREATE TABLE IF NOT EXISTS Feedback (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5),
    comment TEXT,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (event_id) REFERENCES Events(id),
    UNIQUE(student_id, event_id)
);

-- Insert sample data
INSERT INTO Students (name, email, roll_number) VALUES 
('Alice Johnson', 'alice@example.com', 'S1001'),
('Bob Smith', 'bob@example.com', 'S1002'),
('Charlie Brown', 'charlie@example.com', 'S1003');

INSERT INTO Clubs (name, description) VALUES 
('Computer Society', 'For tech enthusiasts'),
('Debate Club', 'Public speaking and debates'),
('Music Club', 'For musicians and music lovers');

INSERT INTO Venues (name, location) VALUES 
('Main Auditorium', 'Building A, 1st Floor'),
('Seminar Hall 2', 'Building B, Ground Floor'),
('Open Air Theater', 'Near Sports Complex');

INSERT INTO Organizers (name, phone) VALUES 
('Prof. Davis', '555-0101'),
('Dr. Wilson', '555-0102'),
('Ms. Thompson', '555-0103');

INSERT INTO Events (title, event_date, club_id, venue_id, organizer_id) VALUES 
('Tech Conference', '2024-07-15', 1, 1, 1),
('Debate Competition', '2024-07-20', 2, 2, 2),
('Music Festival', '2024-07-25', 3, 3, 3);

INSERT INTO Attendance (student_id, event_id, status) VALUES 
(1, 1, 'present'),
(2, 1, 'present'),
(3, 1, 'absent'),
(1, 2, 'present'),
(2, 3, 'present');

INSERT INTO Feedback (student_id, event_id, rating, comment) VALUES 
(1, 1, 5, 'Excellent speakers!'),
(2, 1, 4, 'Very informative'),
(1, 2, 3, 'Could be better organized');
EOF

# Verify the database
echo "✅ Verifying database content..."
sqlite3 "$DB_NAME" <<EOF
.headers on
.mode box
SELECT * FROM Students;
SELECT * FROM Clubs;
SELECT * FROM Events;
SELECT * FROM Attendance;
SELECT * FROM Feedback;
EOF

echo "🎉 Database setup complete! File created: $DB_NAME"
