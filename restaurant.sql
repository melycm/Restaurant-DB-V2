-- CREATE TABLE restaurant (
--     id serial PRIMARY KEY,
--     name varchar,
--     adress varchar,
--     category varchar
-- );

-- CREATE TABLE reviewer (
--     id serial PRIMARY KEY,
--     name varchar,
--     email varchar,
--     karma integer NOT NULL
-- );

-- CREATE TABLE review (
--     id serial PRIMARY KEY,
--     reviewer_id integer REFERENCES reviewer (id),
--     stars integer,
--     title varchar,
--     review varchar,
--     restaurant_id integer REFERENCES restaurant (id)
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'BCN Taste & Tradition', '4210 Roseland St', 'Spanish'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Huynh Restaurant', '912 St Emanuel St', 'Vietnamese'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Uchi', '904 Westheimer Rd', 'Japanese'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Brennans of Houston', '3300 Smith St', 'Creole'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Nobies Restaurant', '2048 Colquitt St', 'American'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Xochi', '1777 Walker St', 'Mexican'
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT, 'Potente', '1515 Texas Ave', 'Italian'
-- );

-- CREATE TABLE review (
--     id serial PRIMARY KEY,
--     reviewer_id integer REFERENCES reviewer (id),
--     stars integer,
--     title varchar,
--     review varchar,
--     restaurant_id integer REFERENCES restaurant (id)
-- );

-- INSERT INTO review VALUES (
--     DEFAULT, 1, 5, 'Amazing', 'Great restaurant', 6
-- );

-- INSERT INTO review VALUES (
--     DEFAULT, 2, 4, 'Great food', 'Amazing taste', 1
-- );