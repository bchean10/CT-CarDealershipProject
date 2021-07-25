Function to add an actor to the db
-- CREATE OR REPLACE FUNCTION add_actor_bc(actor_id_bc INTEGER, first_name_bc VARCHAR, last_name_bc VARCHAR, last_update_bc TIMESTAMP WITHOUT TIME ZONE)
-- RETURNS void
-- AS
-- $$
-- BEGIN
--     INSERT INTO actor(actor_id, first_name, last_name, last_update)
--     VALUES(actor_id_bc, first_name_bc, last_name_bc, last_update_bc);
-- END;
-- $$
-- LANGUAGE plpgsql;

-- -- use function
-- SELECT add_actor_bc(501, 'Kevin', 'Hart', NOW()::timestamp);

-- SELECT * FROM actor
-- WHERE actor_id = 501

CREATE OR REPLACE FUNCTION add_mechanic(mechanic_id_new INT, first_name_new VARCHAR, last_name_new VARCHAR)
RETURNS void
AS 
$$
BEGIN
    INSERT INTO mechanic(mechanic_id, first_name, last_name) 
    VALUES(mechanic_id_new, first_name_new, last_name_new);
END;
$$
LANGUAGE plpgsql;

SELECT add_mechanic(6, 'Denzel', 'Ifixeverything');

SELECT * FROM mechanic
WHERE mechanic_id = 6

SELECT * FROM mechanic
