\! echo 'List all the reviews for a given restaurant given a specific restaurant ID.'
SELECT * FROM review WHERE restaurant_id = 1;

\! echo 'List all the reviews for a given restaurant, given a specific restaurant name.'
SELECT review.review, restaurant.name FROM restaurant INNER JOIN review ON review.restaurant_id = restaurant.id WHERE restaurant.name = 'El Mexicano';

\! echo 'List all the reviews for a given reviewer, given a specific author name.'
SELECT review.review, reviewer.name FROM review, reviewer WHERE review.reviewer_id = reviewer.id;

\! echo 'List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.'
SELECT review.review, restaurant.name FROM review, restaurant WHERE review.restaurant_id = restaurant.id;

\! echo 'Get the average stars by restaurant. The result should have the restaurant name and its average star rating.'
SELECT restaurant.name, avg(review.stars) FROM restaurant INNER JOIN review ON review.restaurant_id = restaurant.id GROUP BY restaurant.name;

\! echo 'Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.'

SELECT restaurant.name, count(review.id) FROM restaurant INNER JOIN review ON review.restaurant_id = restaurant.id GROUP BY restaurant.name;

\! echo 'List all the reviews along with the restaurant, and the reviewer''s name.The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.'

SELECT review.review, restaurant.name, reviewer.name FROM review INNER JOIN restaurant ON review.restaurant_id = restaurant.id INNER JOIN reviewer ON review.reviewer_id = reviewer.id;

\! echo 'Get the average stars given by each reviewer. (reviewer name, average star rating)'
SELECT reviewer.name, avg(review.stars) FROM reviewer INNER JOIN review ON review.reviewer_id = reviewer.id GROUP BY reviewer.id;

\! echo 'Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)'
SELECT reviewer.name, min(review.stars) FROM reviewer INNER JOIN review ON review.reviewer_id = reviewer.id GROUP BY reviewer.id;

\! echo 'Get the number of restaurants in each category. (category name, restaurant count)'
SELECT category, count(restaurant.id) FROM restaurant GROUP BY category;

\! echo 'Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)'
SELECT restaurant.name, count(review.id) FROM restaurant INNER JOIN review ON review.restaurant_id = restaurant.id WHERE review.stars = 5 GROUP BY restaurant.name;

\! echo 'Get the average star rating for a food category. (category name, average star rating)'
SELECT restaurant.category, avg(review.stars) FROM restaurant INNER JOIN review ON review.restaurant_id = restaurant.id GROUP BY restaurant.category;
