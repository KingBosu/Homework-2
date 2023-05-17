CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    member_status VARCHAR
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE movies(
    movies_id SERIAL PRIMARY KEY,
    title VARCHAR,
    rating VARCHAR,
    genre VARCHAR
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    snacks VARCHAR,
    drinks VARCHAR,
    staff_id INTEGER,
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE payments(
    payments_id SERIAL PRIMARY KEY,
    amount INTEGER,
    staff_id INTEGER,
    customer_id INTEGER,
    concessions_id INTEGER,
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(concessions_id) REFERENCES concessions(concessions_id)
);

CREATE TABLE tickets(
    tickets_id SERIAL PRIMARY KEY,
    movies_id INTEGER,
    amount INTEGER,
    FOREIGN KEY(movies_id) REFERENCES movies(movies_id)
);

ALTER TABLE payments
   ADD tickets_id INTEGER,
   ADD FOREIGN KEY(tickets_id) REFERENCES tickets(tickets_id)
;

ALTER TABLE concessions
    DROP staff_id,
    ADD amount INTEGER;

ALTER TABLE payments
DROP amount;