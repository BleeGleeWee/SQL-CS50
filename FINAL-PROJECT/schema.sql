-- Students table
CREATE TABLE Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    roll_number TEXT UNIQUE NOT NULL
);

-- Clubs table
CREATE TABLE Clubs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT
);

-- Venues table
CREATE TABLE Venues (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    location TEXT NOT NULL
);

-- Organizers table
CREATE TABLE Organizers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    phone TEXT
);

-- Events table
CREATE TABLE Events (
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
CREATE TABLE Attendance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    status TEXT CHECK(status IN ('present', 'absent')) NOT NULL DEFAULT 'present',
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (event_id) REFERENCES Events(id),
    UNIQUE(student_id, event_id)
);

-- Feedback table
CREATE TABLE Feedback (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5),
    comment TEXT,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (event_id) REFERENCES Events(id),
    UNIQUE(student_id, event_id)
);

-- Indexes for performance optimization
CREATE INDEX idx_events_club ON Events(club_id);
CREATE INDEX idx_events_venue ON Events(venue_id);
CREATE INDEX idx_events_organizer ON Events(organizer_id);
CREATE INDEX idx_attendance_student ON Attendance(student_id);
CREATE INDEX idx_attendance_event ON Attendance(event_id);
CREATE INDEX idx_feedback_student ON Feedback(student_id);
CREATE INDEX idx_feedback_event ON Feedback(event_id);

-- Sample Data Insertion

-- Students
INSERT OR IGNORE INTO Students (name, email, roll_number) VALUES 
('Alice Johnson', 'alice@example.com', 'S1001'),
('Bob Smith', 'bob@example.com', 'S1002'),
('Charlie Brown', 'charlie@example.com', 'S1003'),
('Diana Prince', 'diana@example.com', 'S1004'),
('Ethan Hunt', 'ethan@example.com', 'S1005'),
('Fiona Green', 'fiona@example.com', 'S1006'),
('George Wilson', 'george@example.com', 'S1007'),
('Hannah Baker', 'hannah@example.com', 'S1008'),
('Ian Cooper', 'ian@example.com', 'S1009'),
('Jessica Lee', 'jessica@example.com', 'S1010');

-- Clubs
INSERT OR IGNORE INTO Clubs (name, description) VALUES 
('Computer Society', 'For tech enthusiasts'),
('Debate Club', 'Public speaking and debates'),
('Music Club', 'For musicians and music lovers'),
('Robotics Club', 'Building robots and AI systems'),
('Photography Club', 'For photography enthusiasts'),
('Drama Club', 'Theater performances and acting workshops'),
('Sports Club', 'All sports activities'),
('Literary Club', 'Creative writing and poetry'),
('Environmental Club', 'Sustainability initiatives'),
('Art Club', 'Painting and creative arts');

-- Venues
INSERT OR IGNORE INTO Venues (name, location) VALUES 
('Main Auditorium', 'Building A, 1st Floor'),
('Seminar Hall 2', 'Building B, Ground Floor'),
('Open Air Theater', 'Near Sports Complex'),
('Computer Lab 1', 'Building C, 2nd Floor'),
('Conference Room 3', 'Administration Block'),
('Sports Complex', 'East Campus'),
('Art Gallery', 'Cultural Center'),
('Library Seminar Room', 'Central Library'),
('Outdoor Amphitheater', 'West Lawn'),
('Innovation Center', 'Research Block');

-- Organizers
INSERT OR IGNORE INTO Organizers (name, phone) VALUES 
('Prof. Davis', '555-0101'),
('Dr. Wilson', '555-0102'),
('Ms. Thompson', '555-0103'),
('Mr. Johnson', '555-0104'),
('Dr. Patel', '555-0105'),
('Prof. Zhang', '555-0106'),
('Ms. Garcia', '555-0107'),
('Mr. Brown', '555-0108'),
('Dr. Kim', '555-0109'),
('Prof. Anderson', '555-0110');

-- Events
INSERT OR IGNORE INTO Events (title, event_date, club_id, venue_id, organizer_id) VALUES 
('Tech Conference', '2024-07-15', 1, 1, 1),
('Debate Competition', '2024-07-20', 2, 2, 2),
('Music Festival', '2024-07-25', 3, 3, 3),
('Robotics Workshop', '2024-08-05', 4, 4, 4),
('Photo Exhibition', '2024-08-15', 5, 5, 5),
('Drama Performance', '2024-08-25', 6, 6, 6),
('Sports Day', '2024-09-05', 7, 7, 7),
('Poetry Slam', '2024-09-15', 8, 8, 8),
('Tree Plantation Drive', '2024-09-25', 9, 9, 9),
('Art Exhibition', '2024-10-05', 10, 10, 10);

-- Attendance
INSERT OR IGNORE INTO Attendance (student_id, event_id, status) VALUES 
(1, 1, 'present'),
(2, 1, 'present'),
(3, 1, 'absent'),
(4, 1, 'present'),
(5, 1, 'present'),
(1, 2, 'present'),
(2, 2, 'absent'),
(3, 2, 'present'),
(6, 3, 'present'),
(7, 3, 'present'),
(8, 4, 'present'),
(9, 4, 'absent'),
(10, 5, 'present'),
(1, 5, 'present'),
(2, 6, 'present'),
(3, 7, 'present'),
(4, 8, 'present'),
(5, 9, 'present'),
(6, 10, 'present'),
(7, 10, 'present');

-- Feedback
INSERT OR IGNORE INTO Feedback (student_id, event_id, rating, comment) VALUES 
(1, 1, 5, 'Excellent speakers and topics!'),
(2, 1, 4, 'Very informative sessions'),
(4, 1, 5, 'Loved the keynote address'),
(5, 1, 3, 'Some sessions were too technical'),
(1, 2, 4, 'Great debaters, very engaging'),
(3, 2, 5, 'Best debate competition this year'),
(6, 3, 5, 'Amazing performances!'),
(7, 3, 4, 'Sound system could be better'),
(8, 4, 5, 'Learned so much about robotics'),
(10, 5, 4, 'Beautiful photographs displayed'),
(1, 5, 3, 'Could have more variety'),
(2, 6, 5, 'Brilliant acting performances'),
(3, 7, 4, 'Well organized sports day'),
(4, 8, 5, 'Inspiring poetry readings'),
(5, 9, 4, 'Great environmental initiative'),
(6, 10, 5, 'Stunning artwork displayed');

-- Views
CREATE VIEW TopRatedEvents AS
SELECT 
    e.id,
    e.title, 
    e.event_date,
    c.name AS club_name,
    ROUND(AVG(f.rating), 2) AS avg_rating,
    COUNT(f.id) AS feedback_count
FROM Events e
JOIN Clubs c ON e.club_id = c.id
LEFT JOIN Feedback f ON e.id = f.event_id
GROUP BY e.id
HAVING avg_rating >= 4.0
ORDER BY avg_rating DESC;

CREATE VIEW StudentParticipation AS
SELECT 
    s.id,
    s.name, 
    s.roll_number,
    COUNT(a.event_id) AS events_attended,
    COUNT(DISTINCT e.club_id) AS clubs_engaged
FROM Students s
LEFT JOIN Attendance a ON s.id = a.student_id AND a.status = 'present'
LEFT JOIN Events e ON a.event_id = e.id
GROUP BY s.id
ORDER BY events_attended DESC;

CREATE VIEW ClubEventCount AS
SELECT 
    c.id,
    c.name AS club_name, 
    COUNT(e.id) AS total_events,
    COUNT(DISTINCT a.student_id) AS unique_participants,
    ROUND(AVG(f.rating), 2) AS avg_rating
FROM Clubs c
LEFT JOIN Events e ON c.id = e.club_id
LEFT JOIN Attendance a ON e.id = a.event_id AND a.status = 'present'
LEFT JOIN Feedback f ON e.id = f.event_id
GROUP BY c.id
ORDER BY total_events DESC;