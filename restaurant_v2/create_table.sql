CREATE TABLE restaurant(
  id serial primary key,
  name varchar,
  address varchar,
  category varchar
);

CREATE TABLE reviewer(
  id serial primary key,
  name varchar,
  email varchar,
  karma integer,
  CHECK(karma>=0),
  CHECK(karma<=7)
);

CREATE TABLE review(
  id serial primary key,
  reviewer_id integer REFERENCES reviewer (id),
  stars integer,
  CHECK(stars>=0),
  CHECK(stars<=5),
  title varchar,
  review varchar,
  restaurant_id integer REFERENCES restaurant (id)
);
