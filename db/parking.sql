//database
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

CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    area_name VARCHAR(100),
    parking_spot VARCHAR(100)
);

INSERT INTO locations (area_name, parking_spot) VALUES
-- NSP Area
('NSP', 'NSP Metro Station Parking'),
('NSP', 'NSP Mall Parking'),
('NSP', 'NSP Office Complex Parking'),
('NSP', 'NSP Market Side Parking'),
('NSP', 'NSP Multi-level Parking'),

-- CP Area
('CP', 'CP Block A Parking'),
('CP', 'CP Block B Parking'),
('CP', 'CP Outer Circle Parking'),
('CP', 'CP Inner Circle Parking'),
('CP', 'CP Palika Bazaar Parking'),
('CP', 'CP Janpath Lane Parking'),
('CP', 'CP Regal Building Parking'),
('CP', 'CP Shankar Market Parking'),

-- Saket Area
('Saket', 'Select Citywalk Mall Parking'),
('Saket', 'DLF Place Mall Parking'),
('Saket', 'Max Hospital Parking'),
('Saket', 'Saket Metro Station Parking'),
('Saket', 'Saket District Court Parking'),
('Saket', 'PVR Anupam Parking'),

-- Rajouri Garden Area
('Rajouri Garden', 'Rajouri Metro Parking'),
('Rajouri Garden', 'TDI Mall Parking'),
('Rajouri Garden', 'Pacific Mall Parking'),
('Rajouri Garden', 'Rajouri Market Parking'),
('Rajouri Garden', 'West Gate Mall Parking'),
('Rajouri Garden', 'City Square Mall Parking'),

-- Karol Bagh Area
('Karol Bagh', 'Karol Bagh Metro Parking'),
('Karol Bagh', 'Ajmal Khan Road Parking'),
('Karol Bagh', 'Karol Bagh Market Parking'),
('Karol Bagh', 'Hardhyan Singh Road Parking'),
('Karol Bagh', 'Dev Nagar Parking'),

-- Dwarka Area
('Dwarka', 'Dwarka Sector 10 Metro Parking'),
('Dwarka', 'Dwarka City Centre Parking'),
('Dwarka', 'Dwarka Sports Complex Parking'),
('Dwarka', 'Dwarka Sector 12 Parking'),
('Dwarka', 'Dwarka Sector 21 Metro Parking'),
('Dwarka', 'Vegas Mall Parking'),

-- Lajpat Nagar Area
('Lajpat Nagar', 'Lajpat Nagar Metro Parking'),
('Lajpat Nagar', 'Central Market Parking'),
('Lajpat Nagar', 'Amar Colony Parking'),
('Lajpat Nagar', 'Ring Road Parking'),

-- Noida Area
('Noida', 'Noida Sector 18 Metro Parking'),
('Noida', 'DLF Mall of India Parking'),
('Noida', 'Great India Place Parking'),
('Noida', 'Wave Mall Parking'),
('Noida', 'Atta Market Parking'),
('Noida', 'Noida City Centre Parking'),
('Noida', 'Film City Parking'),

-- Gurgaon Area
('Gurgaon', 'Cyber Hub Parking'),
('Gurgaon', 'DLF Cyber City Parking'),
('Gurgaon', 'MG Road Metro Parking'),
('Gurgaon', 'Ambience Mall Parking'),
('Gurgaon', 'Sikanderpur Metro Parking'),
('Gurgaon', 'Galleria Market Parking'),
('Gurgaon', 'Sohna Road Parking'),

-- Rohini Area
('Rohini', 'Rohini West Metro Parking'),
('Rohini', 'Unity One Mall Parking'),
('Rohini', 'Adventure Island Parking'),
('Rohini', 'Sector 9 Market Parking'),
('Rohini', 'Rithala Metro Parking'),

-- Pitampura Area
('Pitampura', 'Netaji Subhash Place Parking'),
('Pitampura', 'D Mall Parking'),
('Pitampura', 'TV Tower Parking'),
('Pitampura', 'City Park Mall Parking'),

-- Vasant Kunj Area
('Vasant Kunj', 'Ambience Mall Parking'),
('Vasant Kunj', 'DLF Promenade Parking'),
('Vasant Kunj', 'DLF Emporio Parking'),
('Vasant Kunj', 'Vasant Kunj Metro Parking'),

-- Janakpuri Area
('Janakpuri', 'Janakpuri West Metro Parking'),
('Janakpuri', 'Janakpuri District Centre Parking'),
('Janakpuri', 'Unity One Mall Parking'),

-- Other Popular Areas
('Chandni Chowk', 'Chandni Chowk Metro Parking'),
('Chandni Chowk', 'Red Fort Parking'),
('Chandni Chowk', 'Old Delhi Railway Station Parking'),
('Chandni Chowk', 'Jama Masjid Parking'),

('Hauz Khas', 'Hauz Khas Village Parking'),
('Hauz Khas', 'Hauz Khas Metro Parking'),

('Green Park', 'Green Park Metro Parking'),
('Green Park', 'Aurobindo Market Parking'),

('South Extension', 'South Ex Part 1 Parking'),
('South Extension', 'South Ex Part 2 Parking'),

('New Friends Colony', 'New Friends Colony Community Center Parking'),
('New Friends Colony', 'New Friends Colony Market Parking'),

('Greater Kailash', 'GK-1 M Block Market Parking'),
('Greater Kailash', 'GK-2 M Block Market Parking');

SELECT * FROM locations;
