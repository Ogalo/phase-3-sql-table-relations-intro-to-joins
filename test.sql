-- SELECT * FROM cats WHERE owner_id=2;

-- SELECT cats.name, cats.breed, owners.name
-- FROM cats
-- INNER JOIN owners
-- ON cats.owner_id = owner_id;


-- SELECT cats.name, cats.breed, owners.name
-- FROM cats
-- LEFT OUTER JOIN owners
-- ON cats.owner_id = owners.id;
--  SELECT * FROM cats WHERE owner_id = 1;

CREATE TABLE cat_owners (
  cat_id INTEGER,
  owner_id INTEGER
);

INSERT INTO cat_owners (cat_id, owner_id)
VALUES (3, 2), (3, 3);
SELECT * FROM cat_owners;

 SELECT cat_owners.owner_id
 FROM cat_owners
 WHERE cat_id = 3;

 SELECT owners.name
FROM owners
INNER JOIN cat_owners
ON owners.id = cat_owners.owner_id WHERE cat_owners.cat_id = 3;

SELECT
  cats.name AS cat_name,
  owners.name AS owner_name
FROM cats
INNER JOIN cat_owners
  ON cats.id = cat_owners.cat_id
INNER JOIN owners
  ON cat_owners.owner_id = owners.id;
