# 📊 SQL Joins Practice – Airbnb Advanced Database Scripts

## 📁 Directory: `database-adv-script`

This directory contains advanced SQL queries focused on mastering SQL `JOIN` operations using the schema of an Airbnb-style booking platform. The queries are written to retrieve data across related tables using `INNER JOIN`, `LEFT JOIN`, and a simulated `FULL OUTER JOIN`.

---

## 🎯 Objective

To master SQL joins by writing complex queries that:

- Retrieve bookings along with the users who made them.
- Retrieve properties and their associated reviews, including those without reviews.
- Retrieve all users and bookings, including unmatched records (even if users made no bookings or bookings aren't linked to users).

---

## 📄 Files

| File Name           | Description                                    |
|---------------------|------------------------------------------------|
| `joins_queries.sql` | Contains all SQL queries demonstrating JOINs   |
| `README.md`         | Documentation and explanation of the queries   |

---

## 📚 SQL JOIN Queries

### 1. 🔗 INNER JOIN — Bookings and the Users Who Made Them

```sql
SELECT
    b.booking_id,
    b.property_id,
    b.user_id,
    b.check_in_date,
    b.check_out_date,
    u.first_name,
    u.last_name,
    u.email
FROM
    bookings b
INNER JOIN
    users u ON b.user_id = u.user_id;

SELECT
    p.property_id,
    p.title,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM
    properties p
LEFT JOIN
    reviews r ON p.property_id = r.property_id;


SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.check_in_date
FROM
    users u
LEFT JOIN
    bookings b ON u.user_id = b.user_id

UNION

SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.check_in_date
FROM
    users u
RIGHT JOIN
    bookings b ON u.user_id = b.user_id;

✅ This combines results to include:

Users who haven’t booked.

Bookings not associated with a user.

👩‍💻 Author
Christabel E. Ojobolo
Backend Developer | Tech Educator
🔗 LinkedIn | Website | 📧 ojobolochristabe8@gmail.com