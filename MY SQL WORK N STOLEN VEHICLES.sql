SELECT color , make_name
FROM stolen_vehicles
JOIN make_details
ON stolen_vehicles.make_id=make_details.make_id;

SELECT color, count(color) AS total
FROM stolen_vehicles
GROUP BY color
ORDER BY total DESC
LIMIT 5;

SELECT model_year, count(model_year) AS total
FROM stolen_vehicles
GROUP BY model_year
ORDER BY total DESC;

SELECT region, date_stolen
FROM locations
JOIN stolen_vehicles
ON stolen_vehicles.location_id=locations.location_id;

SELECT make_name, date_stolen
FROM stolen_vehicles
JOIN make_details
ON stolen_vehicles.make_id=make_details.make_id;

SELECT region,color,model_year
FROM locations
JOIN stolen_vehicles
ON stolen_vehicles.location_id=locations.location_id;

