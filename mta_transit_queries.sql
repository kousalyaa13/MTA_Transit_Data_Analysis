USE mta_transit;

-- Query 1: Stations with Highest to Lowest Accessibility Scores
CREATE OR REPLACE VIEW station_accessibility_scores AS
SELECT 
    station_id,
    station_name,
    ROUND(AVG(bike_access_score + ped_access_score) / 2, 2) AS avg_access_score
FROM station
	JOIN station_has_score USING (station_id)
	JOIN score USING (score_id)
GROUP BY station_id, station_name
HAVING avg_access_score IS NOT NULL
ORDER BY avg_access_score DESC;

-- Query 2: Stations with High Pedestrian Access But Low Bike Access
SELECT 
    station_id,
    station_name,
    ped_access_score,
    bike_access_score
FROM station
JOIN station_has_score USING (station_id)
	JOIN score USING (score_id)
WHERE ped_access_score >= 4 AND bike_access_score <= 3
ORDER BY ped_access_score DESC, bike_access_score ASC;

-- Query 3: TOD Areas and Transit Access Distribution
CREATE OR REPLACE VIEW tod_zone_transit_distribution AS
SELECT 
    area_id,
    TOD_area_type,
    COUNT(DISTINCT station_id) AS total_stations,
    ROUND(AVG(parking_score), 2) AS avg_parking_score,
    ROUND(AVG(ped_access_score), 2) AS avg_ped_score,
    ROUND(AVG(bike_access_score), 2) AS avg_bike_score
FROM area
	JOIN station USING (area_id)
	JOIN station_has_score USING (station_id)
	JOIN score USING (score_id)
WHERE TOD_area_type IS NOT NULL
GROUP BY TOD_area_type, area_id;

-- Query 4: Most Accessible Station per TOD Zone
CREATE OR REPLACE VIEW best_station_by_area_type AS
SELECT 
    s.station_id,
    s.station_name,
    a.TOD_area_type,
    ROUND((sc.bike_access_score + sc.ped_access_score)/2, 2) AS avg_access_score
FROM station s
	JOIN area a USING (area_id)
	JOIN station_has_score shs USING (station_id)
	JOIN score sc USING (score_id)
WHERE (sc.bike_access_score + sc.ped_access_score)/2 = (
    SELECT MAX((sc2.bike_access_score + sc2.ped_access_score)/2)
    FROM station s2
		JOIN area a2 USING (area_id)
		JOIN station_has_score shs2 USING (station_id)
		JOIN score sc2 USING (score_id)
    WHERE a2.TOD_area_type = a.TOD_area_type
);

-- Query 5: Stations with Consistent Ridership Across Weekdays and Weekends
CREATE OR REPLACE VIEW ridership_consistency AS
SELECT 
    station_id,
    station_name,
    ABS(SUM(ridership_amount_weekday) - SUM(ridership_amount_weekend)) AS ridership_difference
FROM station
	JOIN ridership USING (station_id)
GROUP BY station_id, station_name
HAVING ridership_difference IS NOT NULL
ORDER BY ridership_difference;

-- Query 6: More Amenities and Higher Ridership
CREATE OR REPLACE VIEW amenity_type_diversity_vs_ridership AS
SELECT 
    station_id,
    station_name,
    (
        MAX(benches) +
        MAX(ticket_machine) +
        MAX(route_info) +
        MAX(shelter) +
        MAX(public_phones) +
        MAX(restrooms) +
        LEAST(MAX(ev_charge_stations), 1) +
        LEAST(MAX(bike_racks), 1) +
        LEAST(MAX(bike_lockers), 1)
    ) AS amenity_type_count,
    ROUND(AVG(ridership_amount_weekday), 2) AS avg_weekday_ridership,
    ROUND(AVG(ridership_amount_weekend), 2) AS avg_weekend_ridership
FROM station
	JOIN ridership USING (station_id)
	JOIN station_has_amenity USING (station_id)
	JOIN amenity USING (amenity_id)
GROUP BY station_id, station_name
HAVING amenity_type_count > 0
ORDER BY amenity_type_count DESC;
