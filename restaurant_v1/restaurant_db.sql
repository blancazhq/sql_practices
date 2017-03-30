CREATE TABLE restaurant (
  id serial primary key,
  name varchar,
  distance numeric,
  stars integer,
  category varchar,
  favorite_dish varchar,
  takeout boolean,
  last_time_ate date
);
