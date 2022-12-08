CREATE TABLE Product(
	id INT PRIMARY KEY,
    NAME VARCHAR(30),
    price INT,
    location VARCHAR(30)
);
 
CREATE TABLE manufacturer(
	id INT,
    company_name VARCHAR(30),
    product_id VARCHAR(5),
    address VARCHAR(20),
    FOREIGN KEY(id) REFERENCES Product(id)
);
 
INSERT INTO Product VALUES(1, 'Tech/IT support', 500, 'Bhubaneswar');
INSERT INTO Product VALUES(2, 'Cloud services', 1000, 'Ranchi');
INSERT INTO Product VALUES(3, 'Virtual desktops', 700, 'Kota');
INSERT INTO Product VALUES(4, 'Data security', 900, 'Dumka');
INSERT INTO Product VALUES(5, 'File servers', 300, 'Bhubaneswar');
 
INSERT INTO manufacturer VALUES(1, 'Deloitte', 'A01', 'Jagmohan Nagar');
INSERT INTO manufacturer VALUES(2, 'Virtusa', 'A02', 'Khandagiri');
INSERT INTO manufacturer VALUES(3, 'Highradius', 'A03', 'Bapujinagar');
INSERT INTO manufacturer VALUES(4, 'Wipro', 'A04', 'Udaygiri');
INSERT INTO manufacturer VALUES(5, 'TCS', 'A05', 'Patia');
 
SELECT company_name FROM Product, manufacturer WHERE Product.id = manufacturer.id AND product_id = 'A02';