-- SELECT TOP 1000 * FROM books
-- SELECT COUNT(title) FROM books
-- QUESTION 3: Count the number of books where the original_publication_year is earlier than 1800.
-- SELECT COUNT(title) FROM books WHERE original_publication_year > 1800
-- QUESTION 4: Create a query that displays distinct authors from the table.
-- SELECT DISTINCT authors FROM books
-- QUESTION 5: Create a query that displays a count of all the books that contain a language code for English.  This could be represented in the table as "eng" or "en-".
-- SELECT COUNT(title) FROM books WHERE language_code = 'eng'
--OR language_code="en-"

-- QUESTION 1:  Create a query that uses the user_id to count the total number of books that each user wants to read.  
-- Print the results in ascending order by user_id under the alias 'Total Books To Read'
-- Hint: You can use both GROUP BY and ORDER BY to complete this query.

-- QUESTION 2: Create a query that uses user_id to count the total number of books each user wants to read.  
-- Have the results sort the table by the total number of book_ids in descending order and under the alias 'Total Books To Read'.
-- Hint: You can use both GROUP BY and ORDER BY to complete this query.

SELECT COUNT(book_id) AS 'Total Books To Read' FROM to_read GROUP BY user_id ORDER BY 'Total Books To Read' DESC