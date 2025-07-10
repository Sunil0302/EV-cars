SELECT * FROM cars.electric_vehicles;

-- Which brand has the most electric vehicle models?

SELECT 
    brand, COUNT(model) count_model
FROM
    electric_vehicles
GROUP BY brand
ORDER BY count_model DESC;

-- Which 5 EVs have the highest top speed?

SELECT 
    brand, model, top_speed_kmh
FROM
    electric_vehicles
ORDER BY top_speed_kmh DESC
LIMIT 5;

-- Which EVs have a range over 500 km and fast charging power above 150 kW?

SELECT 
    model, range_km, fast_charging_power_kw_dc
FROM
    electric_vehicles
WHERE
    range_km > 500
        AND fast_charging_power_kw_dc > 150;

-- What is the average range per brand?

SELECT 
    brand, ROUND(AVG(range_km)) AS avg_range
FROM
    electric_vehicles
GROUP BY brand;

-- List all EVs with battery capacity over 75 kWh and cargo volume above 500 liters.

SELECT 
    *
FROM
    electric_vehicles
WHERE
    battery_capacity_kWh > 75
        AND cargo_volume_l > 500;

-- Which drivetrain type (FWD, RWD, AWD) is most common?

SELECT 
    drivetrain, COUNT(*) AS total_vehicles
FROM
    electric_vehicles
GROUP BY drivetrain
ORDER BY total_vehicles DESC;


-- Which segment (e.g., SUV, Sedan) has the highest average torque?

SELECT 
    segment, ROUND(AVG(torque_nm), 2) AS avg_torque
FROM
    electric_vehicles
GROUP BY segment
ORDER BY avg_torque DESC;


-- What is the average acceleration time (0–100 km/h) for each brand?

SELECT 
    brand, ROUND(AVG(acceleration_0_100_s), 2) AS in_sec
FROM
    electric_vehicles
GROUP BY brand;

-- Find the top 5 most energy-efficient EVs (lowest efficiency_wh_per_km).

SELECT 
    *, efficiency_wh_per_km
FROM
    electric_vehicles
ORDER BY efficiency_wh_per_km;

-- List all 7-seater vehicles with at least 600 km range.
SELECT 
    *
FROM
    electric_vehicles
WHERE
    seats = 7 AND range_km > 600;
 
-- most car body type 
SELECT 
    car_body_type, COUNT(model) car
FROM
    electric_vehicles
GROUP BY car_body_type;


