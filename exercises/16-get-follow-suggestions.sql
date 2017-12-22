-- Get follow suggestions for a given user. Suggestions should be those other
-- users that the given user does not follow yet.
--
-- You have access to the following variables which can be used as placeholders
-- for actual values:
--     - email
--
-- Write your query below:
SELECT email, username FROM users WHERE email NOT IN
(SELECT following FROM follows WHERE follower = '{{email}}'  AND
following <> '{{email}}') AND email <> '{{email}}';