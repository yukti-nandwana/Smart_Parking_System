
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
