USE plant_service;

SELECT plants.id, name, family, genus
FROM plants, info_plants
WHERE family = "Poaceae" AND quantity > 0
ORDER BY genus ASC, name ASC;

