-- 1. List all upcoming events with organizers and venues
SELECT 
    e.id,
    e.title AS event_name, 
    e.event_date,
    c.name AS club_name,
    v.name AS venue, 
    v.location,
    o.name AS organizer_name,
    o.phone AS organizer_contact
FROM Events e
JOIN Clubs c ON e.club_id = c.id
JOIN Venues v ON e.venue_id = v.id
JOIN Organizers o ON e.organizer_id = o.id
WHERE e.event_date >= DATE('now')
ORDER BY e.event_date;

-- 2. Find total number of events each club is organizing (including future and past)
SELECT 
    c.id,
    c.name AS club_name,
    COUNT(e.id) AS total_events,
    SUM(CASE WHEN e.event_date >= DATE('now') THEN 1 ELSE 0 END) AS upcoming_events,
    SUM(CASE WHEN e.event_date < DATE('now') THEN 1 ELSE 0 END) AS past_events
FROM Clubs c
LEFT JOIN Events e ON c.id = e.club_id
GROUP BY c.id
ORDER BY total_events DESC;

-- 3. List top 10 students who have attended the most events
SELECT 
    s.id,
    s.name,
    s.roll_number,
    COUNT(a.event_id) AS events_attended,
    COUNT(DISTINCT e.club_id) AS clubs_engaged
FROM Students s
JOIN Attendance a ON s.id = a.student_id AND a.status = 'present'
JOIN Events e ON a.event_id = e.id
GROUP BY s.id
ORDER BY events_attended DESC
LIMIT 10;

-- 4. Get feedback statistics for each event
SELECT 
    e.id,
    e.title AS event_name,
    e.event_date,
    c.name AS club_name,
    COUNT(f.id) AS feedback_count,
    ROUND(AVG(f.rating), 2) AS average_rating,
    MIN(f.rating) AS min_rating,
    MAX(f.rating) AS max_rating
FROM Events e
JOIN Clubs c ON e.club_id = c.id
LEFT JOIN Feedback f ON e.id = f.event_id
GROUP BY e.id
ORDER BY e.event_date DESC;

-- 5. List students who registered but didn't attend any events
SELECT 
    s.id,
    s.name,
    s.email,
    s.roll_number
FROM Students s
LEFT JOIN Attendance a ON s.id = a.student_id
WHERE a.id IS NULL;

-- 6. Top-rated events (average rating >= 4.5)
SELECT 
    e.id,
    e.title AS event_name,
    e.event_date,
    c.name AS club_name,
    ROUND(AVG(f.rating), 2) AS avg_rating,
    COUNT(f.id) AS feedback_count
FROM Events e
JOIN Clubs c ON e.club_id = c.id
JOIN Feedback f ON e.id = f.event_id
GROUP BY e.id
HAVING avg_rating >= 4.5
ORDER BY avg_rating DESC;

-- 7. Club-wise feedback performance
SELECT 
    c.id,
    c.name AS club_name,
    COUNT(DISTINCT e.id) AS total_events,
    COUNT(f.id) AS total_feedback,
    ROUND(AVG(f.rating), 2) AS avg_rating
FROM Clubs c
LEFT JOIN Events e ON c.id = e.club_id
LEFT JOIN Feedback f ON e.id = f.event_id
GROUP BY c.id
HAVING total_feedback > 0
ORDER BY avg_rating DESC;

-- 8. Show all events a specific student has attended, with feedback if given
SELECT 
    e.id AS event_id,
    e.title AS event_name,
    e.event_date,
    c.name AS club_name,
    a.status,
    f.rating,
    f.comment
FROM Students s
JOIN Attendance a ON s.id = a.student_id
JOIN Events e ON a.event_id = e.id
JOIN Clubs c ON e.club_id = c.id
LEFT JOIN Feedback f ON e.id = f.event_id AND s.id = f.student_id
WHERE s.id = 1  -- Replace with parameter
ORDER BY e.event_date DESC;

-- 9. List students who attended all events by a specific club
SELECT 
    s.id,
    s.name,
    s.roll_number
FROM Students s
WHERE NOT EXISTS (
    SELECT e.id 
    FROM Events e 
    WHERE e.club_id = 1  -- Replace with club_id parameter
    AND NOT EXISTS (
        SELECT 1 
        FROM Attendance a 
        WHERE a.student_id = s.id 
        AND a.event_id = e.id
        AND a.status = 'present'
    )
);

-- 10. Insert a new feedback record
INSERT INTO Feedback (student_id, event_id, rating, comment)
VALUES (1, 5, 4, 'Great event with excellent speakers!');

-- 11. Get event attendance summary
SELECT 
    e.id,
    e.title AS event_name,
    e.event_date,
    c.name AS club_name,
    COUNT(CASE WHEN a.status = 'present' THEN 1 END) AS present_count,
    COUNT(CASE WHEN a.status = 'absent' THEN 1 END) AS absent_count,
    COUNT(DISTINCT f.id) AS feedback_count
FROM Events e
JOIN Clubs c ON e.club_id = c.id
LEFT JOIN Attendance a ON e.id = a.event_id
LEFT JOIN Feedback f ON e.id = f.event_id
GROUP BY e.id
ORDER BY e.event_date DESC;

-- 12. Find most active clubs by participation
SELECT 
    c.id,
    c.name AS club_name,
    COUNT(DISTINCT e.id) AS total_events,
    COUNT(DISTINCT a.student_id) AS unique_participants,
    COUNT(a.id) AS total_attendances
FROM Clubs c
LEFT JOIN Events e ON c.id = e.club_id
LEFT JOIN Attendance a ON e.id = a.event_id AND a.status = 'present'
GROUP BY c.id
ORDER BY unique_participants DESC, total_events DESC;

-- 13. Find students with similar event interests
SELECT 
    s1.id AS student1_id,
    s1.name AS student1_name,
    s2.id AS student2_id,
    s2.name AS student2_name,
    COUNT(DISTINCT e.club_id) AS common_clubs,
    COUNT(DISTINCT a1.event_id) AS common_events
FROM Students s1
JOIN Attendance a1 ON s1.id = a1.student_id
JOIN Events e ON a1.event_id = e.id
JOIN Attendance a2 ON e.id = a2.event_id
JOIN Students s2 ON a2.student_id = s2.id
WHERE s1.id < s2.id  -- Avoid duplicates and self-matches
GROUP BY s1.id, s2.id
HAVING common_events >= 3  -- At least 3 common events
ORDER BY common_events DESC;

-- At the end of queries.sql add:
.mode box
.headers on
SELECT 'Testing query 1' as description;
SELECT * FROM Students LIMIT 3;

SELECT 'Testing query 2' as description;
SELECT * FROM Events LIMIT 3;