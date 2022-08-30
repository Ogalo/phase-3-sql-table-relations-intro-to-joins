-- SELECT * FROM cats WHERE owner_id=2;

-- SELECT cats.name, cats.breed, owners.name
-- FROM cats
-- INNER JOIN owners
-- ON cats.owner_id = owner_id;


SELECT cats.name, cats.breed, owners.name
FROM cats
LEFT OUTER JOIN owners
ON cats.owner_id = owners.id;
