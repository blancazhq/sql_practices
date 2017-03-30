INSERT INTO restaurant (name, address, category) values
('La Carreta', '1252 Roswell Rd, Marietta, GA 30062', 'Mexican'),
('El Mexicano', '1341 Moreland Ave, Atlanta, GA 30316', 'Mexican'),
('Nam Phuong', '4051 Buford Hwy NE, Atlanta, GA 30345', 'Vietnamese'),
('I Luv Pho', '5145 Buford Hwy NE, Doraville, GA 30340', 'Mexican'),
('Lovies BBQ', '3420 Piedmont Rd NE, Atlant, GA 30305', 'Mexican');

INSERT INTO reviewer (name, email, karma) values
('Tom', 'tom@gmail.com', 1),
('Lisa', 'lisa@gmail.com', 5),
('Daniel', 'daniel@gmail.com', 7);

INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) values
(2, 5, 'good restaurant', 'the restaurant is awesome', '4'),
(2, 1, 'bad restaurant', 'the restaurant is bad', '3'),
(1, 2, 'ok restaurant', 'the restaurant is ok', '2'),
(1, 5, 'great restaurant', 'the restaurant is awesome', '5'),
(3, 4, 'good restaurant', 'the restaurant is nice', '1'),
(3, 3, 'fair restaurant', 'the restaurant is so-so', '2'),
(3, 2, 'bad restaurant', 'the restaurant is poor', '3');
