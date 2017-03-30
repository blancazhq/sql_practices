\! echo "list restaurants by the closest distance."
SELECT * FROM restaurant ORDER BY distance;
\! echo "list the top 2 restaurants by distance."
SELECT * FROM restaurant ORDER BY distance LIMIT 2;
\! echo "list the top 2 restaurants by stars."
SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;
\! echo "list the top 2 restaurants by stars where the distance is less than 2 miles."
SELECT * FROM restaurant WHERE distance < 2 ORDER BY stars DESC LIMIT 2;
\! echo "count the number of restaurants in the db."
SELECT count(*) FROM restaurant;
\! echo "count the number of restaurants by category."
SELECT category, count(*) FROM restaurant GROUP BY category;
\! echo "get the average stars per restaurant by category."
SELECT category,avg(stars) FROM restaurant GROUP BY category;
\! echo "get the max stars of a restaurant by category."
SELECT category,max(stars) FROM restaurant GROUP BY category;
