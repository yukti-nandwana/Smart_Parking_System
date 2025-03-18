
--CREATE DATABASEparking_system;

USE parking_system;

CREATE TABLE IF NOT EXISTS ParkingSpots (
    spot_id INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(10) DEFAULT 'available'
);
INSERT INTO ParkingSpots (status) 
VALUES 
    ('available'), 
    ('available'), 
    ('occupied');

INSERT INTO ParkingSpots (status)
SELECT CASE 
           WHEN RAND() < 0.5 THEN 'available'
           ELSE 'occupied'
       END
FROM (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t1,
     (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) t2;

-- Verify the data
SELECT * FROM ParkingSpots;