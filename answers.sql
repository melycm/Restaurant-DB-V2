-- 1) List all the reviews for a given restaurant given a specific restaurant ID.
-- SELECT review.review FROM review 
--     WHERE restaurant_id = 1;

-- 2) List all the reviews for a given restaurant, given a specific restaurant name.
-- SELECT review.review FROM review 
--     WHERE restaurant_id = 6;

-- 3) List all the reviews for a given reviewer, given a specific author name.
-- SELECT review.review FROM review
--     INNER JOIN reviewer ON review.reviewer_id = reviewer.id
--     WHERE reviewer.name = 'Melissa';

-- 4) List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
-- SELECT review.review, restaurant.name FROM review, restaurant
--     WHERE review.restaurant_id = restaurant.id;

-- 5) Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
-- SELECT AVG(review.stars), restaurant.id, restaurant.name FROM restaurant, review
--     WHERE review.restaurant_id = restaurant.id
--     GROUP BY restaurant.id;

-- 6) Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
-- SELECT count(review.review), restaurant.id, restaurant.name FROM restaurant, review
--     WHERE review.restaurant_id = restaurant.id
--     GROUP BY restaurant.id;

-- 7) List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
-- SELECT restaurant.name as restaurant_name, reviewer.name as reviewer_name, review.review FROM restaurant, review, reviewer
-- WHERE restaurant.id = review.restaurant_id AND review.reviewer_id = reviewer.id;

-- 8) Get the average stars given by each reviewer. (reviewer name, average star rating)
-- SELECT reviewer.name as reviewer_name, AVG(review.stars) FROM review, reviewer
--     WHERE reviewer.id = review.reviewer_id
--     GROUP BY reviewer.id;

-- 9) Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
-- SELECT reviewer.name as reviewer_name, MIN(review.stars) FROM review, reviewer
--     WHERE reviewer.id = review.reviewer_id
--     GROUP BY reviewer.id;

-- 10) Get the number of restaurants in each category. (category name, restaurant count)
-- SELECT restaurant.name, COUNT(restaurant.category) FROM restaurant
--     GROUP BY restaurant.id;

-- 11) Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
-- SELECT restaurant.name, COUNT(review.stars) FROM restaurant, review
--     WHERE restaurant.id = review.restaurant_id AND review.stars >= 5
--     GROUP BY restaurant.id;

-- 12) Get the average star rating for a food category. (category name, average star rating)
-- SELECT restaurant.category, AVG(review.stars) FROM restaurant, review
--     WHERE restaurant.id = review.restaurant_id
--     GROUP BY restaurant.id;