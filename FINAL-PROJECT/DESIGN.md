code # Design Document

# Campus Connect DESIGN.md

By Shyamanjali Nanda

## Video Overview: [Insert YouTube URL here]

## Scope

### Purpose of the Database
The purpose of the Campus Connect database is to streamline campus event management by tracking student participation, club activities, event organization, and feedback collection. It aims to provide a centralized platform for managing all aspects of campus events from planning to evaluation.

### Inclusions and Exclusions
**Inclusions:**
- Student profiles with attributes like `id`, `name`, `email`, and `roll_number`
- Clubs with attributes such as `id`, `name`, and `description`
- Events with details like `id`, `title`, `event_date`, and associated club/venue/organizer
- Attendance tracking through the `Attendance` table
- Feedback collection through the `Feedback` table

**Exclusions:**
- Financial transactions or event budgeting
- Detailed scheduling of recurring events
- Room booking conflicts management

## Functional Requirements

### User Capabilities
Users should be able to:
- Register and manage student profiles
- Create and manage club information
- Schedule and manage events with venues and organizers
- Track student attendance at events
- Collect and analyze event feedback
- Generate reports on event participation and ratings

### Beyond Scope
- Financial management of club budgets
- Complex event scheduling with resource allocation
- Social media integration for event promotion

## Representation of ERD

![ER Diagram](https://cdn.corenexis.com/view/?img=d/ju21/CMy1M7.png)

### Entities

**Students:**
- `id` (Primary Key)
- `name`
- `email` (Unique)
- `roll_number` (Unique)

**Clubs:**
- `id` (Primary Key)
- `name`
- `description`

**Venues:**
- `id` (Primary Key)
- `name`
- `location`

**Organizers:**
- `id` (Primary Key)
- `name`
- `phone`

**Events:**
- `id` (Primary Key)
- `title`
- `event_date`
- `club_id` (Foreign Key referencing Clubs)
- `venue_id` (Foreign Key referencing Venues)
- `organizer_id` (Foreign Key referencing Organizers)

**Attendance:**
- `id` (Primary Key)
- `student_id` (Foreign Key referencing Students)
- `event_id` (Foreign Key referencing Events)
- `status` (present/absent)

**Feedback:**
- `id` (Primary Key)
- `student_id` (Foreign Key referencing Students)
- `event_id` (Foreign Key referencing Events)
- `rating` (1-5 scale)
- `comment`

### Relationships

#### Entity Relationship Diagram (ERD)


**Descriptions:**
- Each club can organize multiple events (one-to-many)
- Each event has one venue and one organizer (many-to-one)
- Students can attend multiple events (many-to-many via Attendance)
- Students can provide feedback for multiple events (many-to-many via Feedback)

## Optimizations

### Indexing
- Indexes on all primary keys for fast retrieval
- Indexes on foreign keys (`club_id`, `venue_id`, `organizer_id` in Events table)
- Indexes on `student_id` and `event_id` in Attendance and Feedback tables
- Unique indexes on `email` and `roll_number` in Students table

### Views
- `TopRatedEvents`: Shows events ranked by average feedback rating
- `StudentParticipation`: Displays students with their event attendance count
- `ClubEventCount`: Shows number of events organized by each club

## Limitations

- Does not support multi-day or recurring events
- Limited to single rating system for feedback
- No support for event categories or tags
- No budget tracking for clubs or events

## Future Improvements

- Add support for event categories and tags
- Implement club membership management
- Add budget tracking for events
- Include event scheduling with resource allocation
- Add notifications for upcoming events
- Implement more sophisticated feedback analysis

## Example Queries

1. List all upcoming events with organizers and venues
2. Find total number of events per club
3. Show students who attended the most events
4. Get feedback statistics for each event
5. Identify students who registered but never attended events
6. Display top-rated events (average rating >= 4.5)
7. Show club-wise feedback performance
8. List all events a student attended with feedback
9. Find students who attended all events by a specific club
10. Insert new feedback records