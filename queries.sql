-- 1. Select all rows from members
SELECT * FROM members;

-- 2. Select only specific columns from books
SELECT title, publication_year FROM books;

-- 3. Filter books published after 2000
SELECT * FROM books
WHERE publication_year > 2000;

-- 4. Members with name starting with 'A'
SELECT * FROM members
WHERE name LIKE 'A%';

-- 5. Books published between 1990 and 2010
SELECT title, publication_year FROM books
WHERE publication_year BETWEEN 1990 AND 2010;

-- 6. Members who joined today OR have no email
SELECT * FROM members
WHERE join_date = CURRENT_DATE OR email IS NULL;

-- 7. Books with more than 3 copies AND published before 2010
SELECT * FROM books
WHERE copies > 3 AND publication_year < 2010;

-- 8. Sort members alphabetically
SELECT * FROM members
ORDER BY name ASC;

-- 9. Sort books by publication year (newest first)
SELECT * FROM books
ORDER BY publication_year DESC;

-- 10. Combine filtering + sorting
SELECT title, copies, publication_year
FROM books
WHERE copies >= 2
ORDER BY copies DESC, publication_year ASC;