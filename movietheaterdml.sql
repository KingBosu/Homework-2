INSERT INTO customer(
    first_name, last_name,member_status
) VALUES (
    'Willam','McKay','Elite Member'
), (
    'Derick', 'McKay','Standard Member'
), (
    'John', 'Stevens','Expired Member'
), (
    'Paul', 'Rogers','Expired Member'
);  

INSERT INTO staff(
    first_name, last_name
) VALUES (
    'Roger','Seller'
), (
    'John','Pop'
), (
    'Roy','Arnold'
);

INSERT INTO movies(
    title, rating, genre
) VALUES (
    'Super Mario','PG','Cartoon'
),(
    'Guardians of the Galaxy Vol III','PG-13','Action-Adventure'
),(
    'Jurasic Park','PG-13','Action-Adventure'
),(
    'Endless Love','PG-13','Romance'
);

INSERT INTO concessions(
    snacks,drinks,amount
) VALUES (
    'Pizza','Coke','6'
),(
    'Popcorn',NULL,'4'
);


INSERT INTO tickets(
    movies_id, amount
) VALUES (
    '1','12'
),(
    '2','15'
),(
    '3','10'
),(
    '4','5'
);

INSERT INTO payments(
    staff_id,customer_id,concessions_id,tickets_id
) VALUES (
    '1','1','1','1'
),(
    '2','2','2','2'
),(
    '3','3','1','2'
),(
    '2','1','2','1'
);

--Payments not starting at 1 not sure why --