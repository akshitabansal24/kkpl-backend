USE kkpl;

CREATE TABLE inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(100) NOT NULL,
    fabricType VARCHAR(50) NOT NULL,
    productCode VARCHAR(50) UNIQUE NOT NULL,
    gsm INT,
    width DECIMAL(5,2), -- in inches or cm
    color VARCHAR(50),
    pattern VARCHAR(50),
    quantityInStock INT NOT NULL,
    unitOfMeasure VARCHAR(20), -- e.g., Meters, Rolls, KGs
    unitPrice DECIMAL(10,2),
    reorderLevel INT,
    lastRestockedDate DATE,
    storageLocation VARCHAR(100),
    fabricFinish VARCHAR(50), -- e.g., Flame Resistant
    applicationArea VARCHAR(100), -- e.g., Upholstery, Workwear
    qualityStatus VARCHAR(20), -- Passed, Failed, Pending
    remarks TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP ,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO inventory (productName, fabricType, productCode, gsm, width, color, pattern, quantityInStock, unitOfMeasure, unitPrice, reorderLevel, lastRestockedDate, storageLocation, fabricFinish, applicationArea, qualityStatus, remarks) VALUES 
('Red Cotton Plain', 'Cotton', 'P0001', 180, 44.50, 'Red', 'Plain', 320, 'Meters', 450.00, 100, '2025-04-18', 'Rack-5-A', 'Flame Resistant', 'Upholstery', 'Passed', 'Popular item in summer.'),
('Blue Polyester Striped', 'Polyester', 'P0002', 220, 54.20, 'Blue', 'Striped', 560, 'Rolls', 600.50, 150, '2025-03-10', 'Rack-12-C', 'Water Repellent', 'Workwear', 'Passed', 'Excellent durability.'),
('Black Wool Checked', 'Wool', 'P0003', 300, 58.00, 'Black', 'Checked', 150, 'Meters', 850.00, 70, '2025-02-23', 'Rack-8-B', 'Anti-Static', 'Apparel', 'Passed', 'Warm and soft texture.'),
('White Nylon Printed', 'Nylon', 'P0004', 190, 45.00, 'White', 'Printed', 800, 'KGs', 420.75, 200, '2025-05-02', 'Rack-2-D', 'Stain Resistant', 'Curtains', 'Pending', 'Check color consistency.'),
('Beige Silk Solid', 'Silk', 'P0005', 120, 42.50, 'Beige', 'Solid', 600, 'Meters', 950.25, 100, '2025-01-19', 'Rack-14-B', 'None', 'Apparel', 'Passed', 'High-end clients prefer this.'),
('Gray Rayon Dobby', 'Rayon', 'P0006', 210, 48.80, 'Gray', 'Dobby', 430, 'Rolls', 720.00, 90, '2024-12-30', 'Rack-6-C', 'Water Repellent', 'Industrial', 'Passed', 'Smooth feel.'),
('Brown Cotton Jacquard', 'Cotton', 'P0007', 250, 52.00, 'Brown', 'Jacquard', 390, 'KGs', 670.50, 130, '2025-03-15', 'Rack-10-A', 'Flame Resistant', 'Workwear', 'Passed', 'High GSM, heavy-duty.'),
('Pink Polyester Striped', 'Polyester', 'P0008', 200, 50.00, 'Pink', 'Striped', 720, 'Meters', 580.90, 80, '2025-05-10', 'Rack-3-B', 'Anti-Static', 'Apparel', 'Passed', 'Soft to touch.'),
('Green Blended Checked', 'Blended', 'P0009', 270, 55.25, 'Green', 'Checked', 270, 'Rolls', 765.10, 120, '2024-11-11', 'Rack-7-D', 'Flame Resistant', 'Curtains', 'Failed', 'Color faded on wash.'),
('Yellow Cotton Plain', 'Cotton', 'P0010', 160, 40.00, 'Yellow', 'Plain', 640, 'Meters', 415.00, 60, '2025-04-05', 'Rack-9-C', 'None', 'Upholstery', 'Passed', 'Best for upholstery.');

INSERT INTO inventory (productName, fabricType, productCode, gsm, width, color, pattern, quantityInStock, unitOfMeasure, unitPrice, reorderLevel, lastRestockedDate, storageLocation, fabricFinish, applicationArea, qualityStatus, remarks) VALUES 
('Red Silk Printed', 'Silk', 'P0011', 130, 46.50, 'Red', 'Printed', 290, 'Meters', 910.30, 110, '2025-03-03', 'Rack-4-B', 'None', 'Apparel', 'Passed', 'Lightweight and shiny.'),
('Blue Nylon Solid', 'Nylon', 'P0012', 180, 43.00, 'Blue', 'Solid', 510, 'Rolls', 475.40, 100, '2025-01-25', 'Rack-13-A', 'Stain Resistant', 'Industrial', 'Passed', 'Used in bags.'),
('Black Rayon Dobby', 'Rayon', 'P0013', 200, 48.50, 'Black', 'Dobby', 330, 'KGs', 655.00, 90, '2025-05-12', 'Rack-15-C', 'Anti-Static', 'Apparel', 'Pending', 'Check GSM variation.'),
('White Blended Checked', 'Blended', 'P0014', 260, 52.20, 'White', 'Checked', 410, 'Meters', 700.60, 130, '2025-02-14', 'Rack-1-D', 'Water Repellent', 'Workwear', 'Passed', 'Heavy duty cloth.'),
('Beige Cotton Plain', 'Cotton', 'P0015', 170, 44.75, 'Beige', 'Plain', 800, 'Rolls', 430.00, 100, '2025-03-09', 'Rack-11-B', 'None', 'Curtains', 'Passed', 'Basic curtain fabric.'),
('Gray Wool Jacquard', 'Wool', 'P0016', 300, 57.50, 'Gray', 'Jacquard', 140, 'KGs', 875.60, 75, '2025-04-28', 'Rack-5-C', 'Flame Resistant', 'Upholstery', 'Passed', 'Luxury finish.'),
('Brown Polyester Printed', 'Polyester', 'P0017', 210, 53.20, 'Brown', 'Printed', 670, 'Meters', 610.25, 140, '2024-12-20', 'Rack-6-D', 'Stain Resistant', 'Workwear', 'Passed', 'Good fade resistance.'),
('Pink Nylon Striped', 'Nylon', 'P0018', 190, 45.30, 'Pink', 'Striped', 740, 'Rolls', 520.90, 100, '2025-02-02', 'Rack-7-A', 'None', 'Apparel', 'Passed', 'Smooth texture.'),
('Green Cotton Dobby', 'Cotton', 'P0019', 195, 46.90, 'Green', 'Dobby', 560, 'KGs', 480.40, 110, '2025-03-30', 'Rack-8-B', 'Flame Resistant', 'Industrial', 'Failed', 'Shrinkage after wash.'),
('Yellow Rayon Printed', 'Rayon', 'P0020', 230, 49.75, 'Yellow', 'Printed', 300, 'Meters', 690.10, 90, '2025-05-04', 'Rack-9-D', 'Anti-Static', 'Curtains', 'Passed', 'Good for living rooms.');

INSERT INTO inventory (productName, fabricType, productCode, gsm, width, color, pattern, quantityInStock, unitOfMeasure, unitPrice, reorderLevel, lastRestockedDate, storageLocation, fabricFinish, applicationArea, qualityStatus, remarks) VALUES 
('Red Wool Checked', 'Wool', 'P0021', 310, 56.80, 'Red', 'Checked', 180, 'KGs', 890.20, 80, '2025-01-10', 'Rack-10-A', 'Flame Resistant', 'Apparel', 'Passed', 'Soft wool texture.'),
('Blue Silk Plain', 'Silk', 'P0022', 140, 41.30, 'Blue', 'Plain', 290, 'Meters', 925.60, 70, '2024-12-15', 'Rack-11-B', 'None', 'Curtains', 'Passed', 'Premium silk finish.'),
('Black Polyester Dobby', 'Polyester', 'P0023', 205, 50.50, 'Black', 'Dobby', 460, 'Rolls', 615.75, 100, '2025-03-12', 'Rack-12-C', 'Water Repellent', 'Workwear', 'Passed', 'Tough for daily use.'),
('White Rayon Jacquard', 'Rayon', 'P0024', 240, 53.00, 'White', 'Jacquard', 390, 'Meters', 740.90, 110, '2025-04-09', 'Rack-13-D', 'None', 'Apparel', 'Passed', 'Smooth elegant design.'),
('Beige Nylon Solid', 'Nylon', 'P0025', 175, 47.20, 'Beige', 'Solid', 330, 'KGs', 465.80, 90, '2025-03-05', 'Rack-14-A', 'Anti-Static', 'Industrial', 'Passed', 'Good for lining.'),
('Gray Cotton Printed', 'Cotton', 'P0026', 185, 44.90, 'Gray', 'Printed', 520, 'Meters', 440.00, 120, '2025-04-15', 'Rack-15-B', 'Flame Resistant', 'Curtains', 'Passed', 'Strong color hold.'),
('Brown Wool Striped', 'Wool', 'P0027', 295, 58.30, 'Brown', 'Striped', 150, 'Rolls', 860.00, 80, '2025-02-22', 'Rack-1-C', 'None', 'Upholstery', 'Passed', 'Warm material.'),
('Pink Blended Plain', 'Blended', 'P0028', 210, 48.40, 'Pink', 'Plain', 600, 'Meters', 675.50, 130, '2025-05-01', 'Rack-2-D', 'Flame Resistant', 'Workwear', 'Passed', 'Easy to cut and stitch.'),
('Green Silk Checked', 'Silk', 'P0029', 135, 42.80, 'Green', 'Checked', 250, 'KGs', 910.20, 100, '2025-04-21', 'Rack-3-A', 'Stain Resistant', 'Apparel', 'Pending', 'Needs quality testing.'),
('Yellow Rayon Printed', 'Rayon', 'P0030', 225, 51.10, 'Yellow', 'Printed', 410, 'Rolls', 715.00, 110, '2025-03-28', 'Rack-4-C', 'Water Repellent', 'Curtains', 'Passed', 'Bright color. Great for spring.');

INSERT INTO inventory (productName, fabricType, productCode, gsm, width, color, pattern, quantityInStock, unitOfMeasure, unitPrice, reorderLevel, lastRestockedDate, storageLocation, fabricFinish, applicationArea, qualityStatus, remarks) VALUES 
('Red Blended Dobby', 'Blended', 'P0031', 235, 49.20, 'Red', 'Dobby', 370, 'Meters', 690.40, 120, '2025-02-07', 'Rack-5-D', 'None', 'Apparel', 'Passed', 'Economical and flexible.'),
('Blue Cotton Striped', 'Cotton', 'P0032', 190, 45.70, 'Blue', 'Striped', 480, 'KGs', 495.60, 100, '2025-03-11', 'Rack-6-A', 'Flame Resistant', 'Workwear', 'Passed', 'Mid-range utility fabric.'),
('Black Nylon Checked', 'Nylon', 'P0033', 200, 47.80, 'Black', 'Checked', 530, 'Rolls', 560.30, 90, '2025-04-10', 'Rack-7-C', 'Stain Resistant', 'Curtains', 'Passed', 'Sharp lines, bold finish.'),
('White Wool Printed', 'Wool', 'P0034', 310, 59.00, 'White', 'Printed', 120, 'Meters', 870.90, 70, '2025-01-18', 'Rack-8-D', 'Anti-Static', 'Apparel', 'Passed', 'Heavy winter fabric.'),
('Beige Rayon Solid', 'Rayon', 'P0035', 205, 50.90, 'Beige', 'Solid', 390, 'Rolls', 705.10, 100, '2025-02-13', 'Rack-9-A', 'None', 'Industrial', 'Passed', 'Best for dyeing.'),
('Gray Polyester Jacquard', 'Polyester', 'P0036', 260, 54.60, 'Gray', 'Jacquard', 270, 'Meters', 640.25, 90, '2025-05-06', 'Rack-10-B', 'Water Repellent', 'Curtains', 'Passed', 'Heavy curtain type.'),
('Brown Silk Plain', 'Silk', 'P0037', 150, 42.30, 'Brown', 'Plain', 240, 'KGs', 940.10, 80, '2025-03-16', 'Rack-11-C', 'None', 'Apparel', 'Passed', 'Fine quality silk.'),
('Pink Cotton Checked', 'Cotton', 'P0038', 185, 45.10, 'Pink', 'Checked', 580, 'Rolls', 455.80, 120, '2025-04-19', 'Rack-12-D', 'Flame Resistant', 'Curtains', 'Passed', 'Bright feminine tone.'),
('Green Polyester Dobby', 'Polyester', 'P0039', 220, 49.60, 'Green', 'Dobby', 470, 'Meters', 600.00, 100, '2025-01-30', 'Rack-13-A', 'Anti-Static', 'Apparel', 'Passed', 'Breezy wear.'),
('Yellow Wool Striped', 'Wool', 'P0040', 305, 57.70, 'Yellow', 'Striped', 130, 'KGs', 880.00, 80, '2025-02-26', 'Rack-14-B', 'Flame Resistant', 'Upholstery', 'Passed', 'Heavy and insulating.');

INSERT INTO inventory (productName, fabricType, productCode, gsm, width, color, pattern, quantityInStock, unitOfMeasure, unitPrice, reorderLevel, lastRestockedDate, storageLocation, fabricFinish, applicationArea, qualityStatus, remarks) VALUES 
('Red Rayon Printed', 'Rayon', 'P0041', 215, 50.80, 'Red', 'Printed', 450, 'Meters', 725.00, 110, '2025-05-08', 'Rack-15-C', 'Stain Resistant', 'Curtains', 'Passed', 'Rich deep colors.'),
('Blue Blended Solid', 'Blended', 'P0042', 200, 46.60, 'Blue', 'Solid', 360, 'Rolls', 670.30, 100, '2025-03-24', 'Rack-1-D', 'Water Repellent', 'Apparel', 'Passed', 'Soft yet durable.'),
('Black Cotton Plain', 'Cotton', 'P0043', 180, 44.00, 'Black', 'Plain', 510, 'KGs', 445.20, 120, '2025-04-25', 'Rack-2-A', 'None', 'Workwear', 'Passed', 'Staple item.'),
('White Silk Dobby', 'Silk', 'P0044', 135, 43.60, 'White', 'Dobby', 260, 'Meters', 930.75, 90, '2025-02-18', 'Rack-3-B', 'Stain Resistant', 'Apparel', 'Passed', 'Luxury formal.'),
('Beige Wool Printed', 'Wool', 'P0045', 315, 59.20, 'Beige', 'Printed', 140, 'Rolls', 885.90, 70, '2025-03-02', 'Rack-4-C', 'Flame Resistant', 'Upholstery', 'Passed', 'Long-lasting prints.'),
('Gray Rayon Checked', 'Rayon', 'P0046', 225, 52.90, 'Gray', 'Checked', 420, 'Meters', 710.60, 110, '2025-01-14', 'Rack-5-D', 'None', 'Curtains', 'Passed', 'Muted modern tones.'),
('Brown Blended Jacquard', 'Blended', 'P0047', 255, 53.30, 'Brown', 'Jacquard', 310, 'Rolls', 765.80, 100, '2025-04-03', 'Rack-6-A', 'Anti-Static', 'Apparel', 'Passed', 'Sturdy cloth.'),
('Pink Nylon Striped', 'Nylon', 'P0048', 195, 47.10, 'Pink', 'Striped', 540, 'KGs', 530.00, 120, '2025-03-18', 'Rack-7-B', 'Water Repellent', 'Curtains', 'Passed', 'Bright and clean look.'),
('Green Cotton Printed', 'Cotton', 'P0049', 175, 46.70, 'Green', 'Printed', 610, 'Meters', 470.25, 110, '2025-04-12', 'Rack-8-C', 'Flame Resistant', 'Upholstery', 'Passed', 'Patterned floral.'),
('Yellow Polyester Plain', 'Polyester', 'P0050', 210, 49.10, 'Yellow', 'Plain', 490, 'Rolls', 590.90, 100, '2025-01-29', 'Rack-9-D', 'None', 'Apparel', 'Passed', 'Bright summer shade.'),
('Red Blended Printed', 'Blended', 'P0051', 230, 51.50, 'Red', 'Printed', 450, 'KGs', 695.00, 100, '2025-02-05', 'Rack-10-A', 'Stain Resistant', 'Curtains', 'Passed', 'Good resistance to sunlight.'),
('Blue Wool Dobby', 'Wool', 'P0052', 320, 59.50, 'Blue', 'Dobby', 120, 'Meters', 900.00, 90, '2025-01-20', 'Rack-11-B', 'Flame Resistant', 'Upholstery', 'Passed', 'Luxury heavy feel.'),
('Black Rayon Solid', 'Rayon', 'P0053', 210, 50.20, 'Black', 'Solid', 340, 'Rolls', 680.50, 100, '2025-03-14', 'Rack-12-C', 'None', 'Curtains', 'Passed', 'Standard dark shade.'),
('White Polyester Checked', 'Polyester', 'P0054', 220, 53.10, 'White', 'Checked', 400, 'KGs', 625.00, 110, '2025-04-06', 'Rack-13-D', 'Water Repellent', 'Workwear', 'Passed', 'Breathable fabric.'),
('Beige Silk Striped', 'Silk', 'P0055', 145, 42.60, 'Beige', 'Striped', 270, 'Meters', 950.00, 90, '2025-03-23', 'Rack-14-A', 'None', 'Apparel', 'Passed', 'Delicate feel.'),
('Gray Cotton Jacquard', 'Cotton', 'P0056', 250, 54.20, 'Gray', 'Jacquard', 390, 'Rolls', 705.80, 100, '2025-04-30', 'Rack-15-B', 'Flame Resistant', 'Curtains', 'Passed', 'High thread count.'),
('Brown Nylon Printed', 'Nylon', 'P0057', 185, 46.30, 'Brown', 'Printed', 520, 'KGs', 510.40, 110, '2025-03-29', 'Rack-1-C', 'Stain Resistant', 'Apparel', 'Passed', 'Colorfast under sun.'),
('Pink Wool Solid', 'Wool', 'P0058', 305, 58.10, 'Pink', 'Solid', 160, 'Meters', 860.00, 90, '2025-01-27', 'Rack-2-D', 'Anti-Static', 'Upholstery', 'Passed', 'For winter furniture.'),
('Green Rayon Striped', 'Rayon', 'P0059', 220, 51.70, 'Green', 'Striped', 430, 'Rolls', 700.00, 100, '2025-04-08', 'Rack-3-A', 'None', 'Curtains', 'Passed', 'Fresh look for homes.'),
('Yellow Blended Dobby', 'Blended', 'P0060', 240, 52.40, 'Yellow', 'Dobby', 390, 'KGs', 685.90, 110, '2025-02-11', 'Rack-4-B', 'Water Repellent', 'Apparel', 'Passed', 'Popular with tailors.');

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'kkpl';

SELECT COLUMN_NAME, DATA_TYPE FROM information_schema.columns WHERE table_schema = 'kkpl' AND table_name = 'inventory' ORDER BY ORDINAL_POSITION;


CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    orderId VARCHAR(20) NOT NULL,
    customerName VARCHAR(100) NOT NULL,
    customerEmail VARCHAR(100),
    customerPhone VARCHAR(20),
    customerAddress TEXT,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(100) NOT NULL,
    fabricType VARCHAR(50),
    quantity INT NOT NULL,
    unitOfMeasure VARCHAR(20), -- e.g., Meters, Rolls, KGs
    unitPrice DECIMAL(10,2) NOT NULL,
    totalPrice DECIMAL(12,2) GENERATED ALWAYS AS (quantity * unitPrice) STORED,
    orderDate DATE DEFAULT (CURRENT_DATE),
    deliveryDate DATE,
    orderStatus VARCHAR(30) DEFAULT 'Pending', -- Pending, Confirmed, Shipped, Delivered, Cancelled
    paymentStatus VARCHAR(30) DEFAULT 'Unpaid', -- Unpaid, Paid, Partially Paid
    paymentMode VARCHAR(30), -- e.g., Cash, UPI, Bank Transfer
    dispatchedFrom VARCHAR(100), -- warehouse location
    trackingId VARCHAR(100),
    remarks TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO orders (
    orderId, customerName, customerEmail, customerPhone, customerAddress,
    productCode, productName, fabricType, quantity, unitOfMeasure,
    unitPrice, orderDate, deliveryDate, orderStatus, paymentStatus,
    paymentMode, dispatchedFrom, trackingId, remarks, createdAt, updatedAt
) VALUES
(
    'ORD001', 'Radha Designer Studio', 'radhadesignerstudio@example.com', '9130969778', 'Dwarka, Delhi, India',
    'PC742', 'Cotton Fabric Premium', 'Cotton', 52, 'Meters',
    95.25, '2025-05-13', '2025-05-20', 'Confirmed', 'Unpaid',
    'Bank Transfer', 'Delhi Dispatch Unit', NULL, '', NOW(), NOW()
),
(
    'ORD002', 'Fashion Trendz', 'fashiontrendz@example.com', '9742245313', 'Guindy, Chennai, India',
    'PC806', 'Polyester Yarn Plus', 'Polyester', 130, 'Meters',
    96.44, '2025-05-14', '2025-05-21', 'Delivered', 'Paid',
    'Cash', 'Chennai Dispatch Unit', 'TRK791564', '', NOW(), NOW()
),
(
    'ORD003', 'Sejal Saree Centre', 'sejalsareecentre@example.com', '9874291406', 'Rohini, Delhi, India',
    'PC214', 'Wool Blend Thick', 'Wool', 108, 'Rolls',
    92.39, '2025-05-15', '2025-05-20', 'Delivered', 'Paid',
    'UPI', 'Delhi Dispatch Unit', 'TRK928494', '', NOW(), NOW()
),
(
    'ORD004', 'Vishal Garments', 'vishalgarments@example.com', '9483949382', 'Ranjit Avenue, Amritsar, India',
    'PC187', 'Canvas Heavy Duty', 'Canvas', 85, 'KGs',
    127.06, '2025-05-16', '2025-05-24', 'Confirmed', 'Partially Paid',
    'UPI', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()
),
(
    'ORD005', 'Devika Prints', 'devikaprints@example.com', '9517427305', 'Andheri, Mumbai, India',
    'PC436', 'Linen Ultra Soft', 'Linen', 55, 'Meters',
    86.35, '2025-05-17', '2025-05-22', 'Pending', 'Unpaid',
    'Bank Transfer', 'Mumbai Dispatch Unit', NULL, '', NOW(), NOW()
),
(
    'ORD006', 'Greenleaf Exports', 'greenleafexports@example.com', '9985717345', 'HSR Layout, Bengaluru, India',
    'PC633', 'Viscose Premium', 'Viscose', 106, 'KGs',
    107.83, '2025-05-18', '2025-05-26', 'Delivered', 'Paid',
    'Cash', 'Bengaluru Dispatch Unit', 'TRK299039', '', NOW(), NOW()
),
(
    'ORD007', 'Classic Weaves', 'classicweaves@example.com', '9651124087', 'Mall Road, Amritsar, India',
    'PC842', 'Twill Stretch Pro', 'Twill', 140, 'KGs',
    84.64, '2025-05-19', '2025-05-26', 'Confirmed', 'Paid',
    'UPI', 'Amritsar Dispatch Unit', 'TRK845684', '', NOW(), NOW()
),
(
    'ORD008', 'Tirupati Fabrics', 'tirupatifabrics@example.com', '9482491248', 'Saket, Delhi, India',
    'PC954', 'Denim Rugged', 'Denim', 82, 'Rolls',
    144.83, '2025-05-20', '2025-05-27', 'Shipped', 'Partially Paid',
    'Cash', 'Delhi Dispatch Unit', 'TRK283884', '', NOW(), NOW()
),
(
    'ORD009', 'Om Sai Enterprises', 'omsaienterprises@example.com', '9374030871', 'Whitefield, Bengaluru, India',
    'PC377', 'Silk Shine', 'Silk', 43, 'Meters',
    87.13, '2025-05-21', '2025-05-29', 'Delivered', 'Paid',
    'Bank Transfer', 'Bengaluru Dispatch Unit', 'TRK958829', '', NOW(), NOW()
),
(
    'ORD010', 'Asha Enterprises', 'ashaenterprises@example.com', '9261570643', 'GT Road, Amritsar, India',
    'PC845', 'Organic Cotton Light', 'Cotton', 123, 'KGs',
    75.06, '2025-05-22', '2025-05-30', 'Shipped', 'Paid',
    'UPI', 'Amritsar Dispatch Unit', 'TRK335164', '', NOW(), NOW()
);

INSERT INTO orders (
    orderId, customerName, customerEmail, customerPhone, customerAddress,
    productCode, productName, fabricType, quantity, unitOfMeasure,
    unitPrice, orderDate, deliveryDate, orderStatus, paymentStatus,
    paymentMode, dispatchedFrom, trackingId, remarks, createdAt, updatedAt
) VALUES
('ORD011', 'Shree Lakshmi Textiles', 'lakshmitextiles@example.com', '9123401122', 'Lal Bazar, Amritsar, India',
 'PC412', 'Rayon Flexi', 'Rayon', 97, 'Meters', 88.45, '2025-05-23', '2025-05-30', 'Pending', 'Unpaid',
 'Cash', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD012', 'Kavita Boutique', 'kavitaboutique@example.com', '9345217890', 'Karol Bagh, Delhi, India',
 'PC541', 'Crepe Silk', 'Silk', 67, 'Meters', 123.00, '2025-05-24', '2025-06-01', 'Confirmed', 'Paid',
 'UPI', 'Delhi Dispatch Unit', 'TRK100112', '', NOW(), NOW()),

('ORD013', 'TrendHub Garments', 'trendhubgarments@example.com', '9842567701', 'Tilak Nagar, Jaipur, India',
 'PC318', 'Drill Cotton Tough', 'Cotton', 89, 'KGs', 110.55, '2025-05-25', '2025-06-03', 'Delivered', 'Paid',
 'Bank Transfer', 'Jaipur Dispatch Unit', 'TRK984110', '', NOW(), NOW()),

('ORD014', 'Suraj Textiles', 'surajtextiles@example.com', '9567482310', 'Dabwali Road, Amritsar, India',
 'PC662', 'Canvas Water Repel', 'Canvas', 100, 'Rolls', 134.75, '2025-05-26', '2025-06-04', 'Shipped', 'Paid',
 'UPI', 'Amritsar Dispatch Unit', 'TRK841237', '', NOW(), NOW()),

('ORD015', 'Milan Dresses', 'milandresses@example.com', '9104356278', 'C G Road, Ahmedabad, India',
 'PC721', 'Lycra Flex Fit', 'Lycra', 73, 'Meters', 98.65, '2025-05-27', '2025-06-06', 'Pending', 'Unpaid',
 'Cash', 'Ahmedabad Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD016', 'Jain Saree Palace', 'jainsareepalace@example.com', '9982308751', 'Lawrence Road, Amritsar, India',
 'PC534', 'Chiffon Superlight', 'Chiffon', 65, 'Meters', 88.70, '2025-05-28', '2025-06-06', 'Confirmed', 'Partially Paid',
 'Bank Transfer', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD017', 'Maya Exports', 'mayaexports@example.com', '9876103457', 'Adyar, Chennai, India',
 'PC609', 'Terrycot Rich', 'Terrycot', 109, 'Rolls', 102.55, '2025-05-29', '2025-06-07', 'Shipped', 'Paid',
 'Cash', 'Chennai Dispatch Unit', 'TRK114298', '', NOW(), NOW()),

('ORD018', 'Shivam Retail', 'shivamretail@example.com', '9623418899', 'Sector 17, Chandigarh, India',
 'PC765', 'Jacquard Premium', 'Jacquard', 112, 'KGs', 119.35, '2025-05-30', '2025-06-08', 'Confirmed', 'Paid',
 'UPI', 'Chandigarh Dispatch Unit', 'TRK498001', '', NOW(), NOW()),

('ORD019', 'Kaira Creations', 'kairacreations@example.com', '9054781223', 'Hathi Gate, Amritsar, India',
 'PC822', 'Brocade Luxury', 'Brocade', 84, 'Meters', 156.20, '2025-05-31', '2025-06-09', 'Delivered', 'Paid',
 'Bank Transfer', 'Amritsar Dispatch Unit', 'TRK330552', '', NOW(), NOW()),

('ORD020', 'StyleCasa', 'stylecasa@example.com', '9167305598', 'Baner, Pune, India',
 'PC478', 'Poly Cotton Mix', 'Poly Cotton', 68, 'KGs', 93.25, '2025-06-01', '2025-06-10', 'Delivered', 'Paid',
 'UPI', 'Pune Dispatch Unit', 'TRK750002', '', NOW(), NOW());
INSERT INTO orders (
    orderId, customerName, customerEmail, customerPhone, customerAddress,
    productCode, productName, fabricType, quantity, unitOfMeasure,
    unitPrice, orderDate, deliveryDate, orderStatus, paymentStatus,
    paymentMode, dispatchedFrom, trackingId, remarks, createdAt, updatedAt
) VALUES
('ORD021', 'Rajeshwari Traders', 'rajeshwaritraders@example.com', '9873108765', 'Clock Tower, Amritsar, India',
 'PC681', 'Gabardine Classic', 'Gabardine', 74, 'Meters', 115.90, '2025-06-02', '2025-06-11', 'Confirmed', 'Paid',
 'UPI', 'Amritsar Dispatch Unit', 'TRK908712', '', NOW(), NOW()),

('ORD022', 'FashionSpree', 'fashionspree@example.com', '9301253876', 'Connaught Place, Delhi, India',
 'PC390', 'Poplin Cool Touch', 'Poplin', 93, 'KGs', 89.75, '2025-06-03', '2025-06-12', 'Shipped', 'Unpaid',
 'Cash', 'Delhi Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD023', 'Divya Textiles', 'divyatextiles@example.com', '9142674832', 'Park Street, Kolkata, India',
 'PC205', 'Chinon Glossy', 'Chinon', 69, 'Meters', 99.60, '2025-06-04', '2025-06-13', 'Pending', 'Unpaid',
 'Bank Transfer', 'Kolkata Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD024', 'Galaxy Garments', 'galaxygarments@example.com', '9981135723', 'Guru Bazaar, Amritsar, India',
 'PC832', 'Mesh Airy', 'Mesh', 77, 'KGs', 74.30, '2025-06-05', '2025-06-14', 'Delivered', 'Paid',
 'Cash', 'Amritsar Dispatch Unit', 'TRK934002', '', NOW(), NOW()),

('ORD025', 'Urban Threads', 'urbanthreads@example.com', '9611349821', 'MG Road, Bengaluru, India',
 'PC551', 'Tulle Soft Net', 'Tulle', 110, 'Meters', 87.90, '2025-06-06', '2025-06-15', 'Confirmed', 'Paid',
 'UPI', 'Bengaluru Dispatch Unit', 'TRK332012', '', NOW(), NOW()),

('ORD026', 'Poonam Garments', 'poonamgarments@example.com', '9048112034', 'Hall Bazar, Amritsar, India',
 'PC613', 'Net Shine', 'Net', 58, 'Rolls', 102.45, '2025-06-07', '2025-06-17', 'Shipped', 'Partially Paid',
 'Cash', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD027', 'Elegant Drapes', 'elegantdrapes@example.com', '9391220477', 'Camp, Pune, India',
 'PC749', 'Organza Rich', 'Organza', 65, 'Meters', 144.55, '2025-06-08', '2025-06-18', 'Delivered', 'Paid',
 'UPI', 'Pune Dispatch Unit', 'TRK457899', '', NOW(), NOW()),

('ORD028', 'Silken Touch', 'silkentouch@example.com', '9021278711', 'Bandra West, Mumbai, India',
 'PC788', 'Georgette Smooth', 'Georgette', 92, 'KGs', 105.00, '2025-06-09', '2025-06-19', 'Confirmed', 'Paid',
 'Bank Transfer', 'Mumbai Dispatch Unit', 'TRK765002', '', NOW(), NOW()),

('ORD029', 'Deepak Cloth House', 'deepakclothhouse@example.com', '9342891112', 'Majitha Road, Amritsar, India',
 'PC800', 'Velvet Royal', 'Velvet', 80, 'Meters', 150.25, '2025-06-10', '2025-06-20', 'Delivered', 'Paid',
 'UPI', 'Amritsar Dispatch Unit', 'TRK231123', '', NOW(), NOW()),

('ORD030', 'Phoenix Fashion', 'phoenixfashion@example.com', '9884134567', 'Sector 22, Chandigarh, India',
 'PC199', 'Modal Comfort', 'Modal', 102, 'Meters', 91.10, '2025-06-11', '2025-06-21', 'Shipped', 'Paid',
 'Cash', 'Chandigarh Dispatch Unit', 'TRK989001', '', NOW(), NOW());

INSERT INTO orders (
    orderId, customerName, customerEmail, customerPhone, customerAddress,
    productCode, productName, fabricType, quantity, unitOfMeasure,
    unitPrice, orderDate, deliveryDate, orderStatus, paymentStatus,
    paymentMode, dispatchedFrom, trackingId, remarks, createdAt, updatedAt
) VALUES
('ORD031', 'Kriti Fashions', 'kritifashions@example.com', '9012345690', 'Civil Lines, Amritsar, India',
 'PC300', 'Woolen Soft Touch', 'Wool', 55, 'Meters', 120.00, '2025-06-12', '2025-06-22', 'Pending', 'Unpaid',
 'Bank Transfer', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD032', 'Shree Gopal Textiles', 'gopaltextiles@example.com', '9845623411', 'Ashok Nagar, Hyderabad, India',
 'PC415', 'Satin Smooth', 'Satin', 66, 'Meters', 130.00, '2025-06-13', '2025-06-23', 'Delivered', 'Paid',
 'UPI', 'Hyderabad Dispatch Unit', 'TRK140298', '', NOW(), NOW()),

('ORD033', 'Bharti Emporium', 'bhartiemporium@example.com', '9876543100', 'Harmandir Sahib Area, Amritsar, India',
 'PC655', 'Crepe Wrinkle Free', 'Crepe', 72, 'KGs', 89.10, '2025-06-14', '2025-06-24', 'Confirmed', 'Paid',
 'Cash', 'Amritsar Dispatch Unit', 'TRK231094', '', NOW(), NOW()),

('ORD034', 'Anand Garments', 'anandgarments@example.com', '9810012345', 'Nehru Place, Delhi, India',
 'PC920', 'Silk Matte Finish', 'Silk', 84, 'Rolls', 99.45, '2025-06-15', '2025-06-25', 'Shipped', 'Partially Paid',
 'Cash', 'Delhi Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD035', 'Heritage Textiles', 'heritagetextiles@example.com', '9102837465', 'Lawrence Road, Amritsar, India',
 'PC814', 'Canvas Tough Plus', 'Canvas', 88, 'KGs', 109.20, '2025-06-16', '2025-06-26', 'Delivered', 'Paid',
 'Bank Transfer', 'Amritsar Dispatch Unit', 'TRK984762', '', NOW(), NOW()),

('ORD036', 'Roopam Saree Store', 'roopamsareestore@example.com', '9111223344', 'New Market, Bhopal, India',
 'PC505', 'Taffeta Premium', 'Taffeta', 76, 'Meters', 92.70, '2025-06-17', '2025-06-27', 'Confirmed', 'Paid',
 'UPI', 'Bhopal Dispatch Unit', 'TRK100932', '', NOW(), NOW()),

('ORD037', 'Vrinda Fashions', 'vrindafashions@example.com', '9781263410', 'Raja Sansi, Amritsar, India',
 'PC777', 'Denim Raw Look', 'Denim', 90, 'Meters', 113.10, '2025-06-18', '2025-06-28', 'Pending', 'Unpaid',
 'Bank Transfer', 'Amritsar Dispatch Unit', NULL, '', NOW(), NOW()),

('ORD038', 'Silk Route', 'silkroute@example.com', '9567401283', 'Salt Lake, Kolkata, India',
 'PC626', 'Pure Silk Elite', 'Silk', 71, 'KGs', 140.30, '2025-06-19', '2025-06-29', 'Delivered', 'Paid',
 'Cash', 'Kolkata Dispatch Unit', 'TRK983745', '', NOW(), NOW()),

('ORD039', 'The Fabric House', 'thefabrichouse@example.com', '9090011223', 'Alpha One Mall, Amritsar, India',
 'PC499', 'Linen Feel Soft', 'Linen', 87, 'Meters', 88.88, '2025-06-20', '2025-06-30', 'Confirmed', 'Paid',
 'UPI', 'Amritsar Dispatch Unit', 'TRK542187', '', NOW(), NOW()),

('ORD040', 'New Age Textiles', 'newagetextiles@example.com', '9800198765', 'Dadar, Mumbai, India',
 'PC365', 'Wool Mix Stretch', 'Wool', 96, 'Rolls', 125.55, '2025-06-21', '2025-07-01', 'Shipped', 'Paid',
 'Bank Transfer', 'Mumbai Dispatch Unit', 'TRK872300', '', NOW(), NOW());

CREATE TABLE supplier (
    id INT PRIMARY KEY AUTO_INCREMENT,
    supplierId VARCHAR(20) UNIQUE NOT NULL,
    supplierName VARCHAR(100) NOT NULL,
    contactPerson VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    alternatePhone VARCHAR(20),
    addressLine1 VARCHAR(150),
    addressLine2 VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    postalCode VARCHAR(10),
    country VARCHAR(50) DEFAULT 'India',
    gstNumber VARCHAR(20) UNIQUE,
    panNumber VARCHAR(20),
    bankName VARCHAR(100),
    bankAccountNumber VARCHAR(30),
    ifscCode VARCHAR(20),
    paymentTerms VARCHAR(100), -- e.g., Net 30, Advance, Partial
    supplyCategory VARCHAR(100), -- e.g., Yarn, Dyes, Fabric, Chemicals
    isActive BOOLEAN DEFAULT TRUE,
    remarks TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO supplier (supplierId, supplierName, contactPerson, email, phone, alternatePhone, addressLine1, addressLine2, city, state, postalCode, gstNumber, panNumber, bankName, bankAccountNumber, ifscCode, paymentTerms, supplyCategory, remarks)
VALUES
('SUP001', 'Asha Textiles Pvt Ltd', 'Ravi Mehta', 'ravi@ashatextiles.in', '9876543210', '9812345678', 'Plot 12, Industrial Area', 'Phase II', 'Ludhiana', 'Punjab', '141003', '03AABCA1234A1Z1', 'AABCA1234A', 'State Bank of India', '321456789012', 'SBIN0001456', 'Net 30', 'Fabric', 'Trusted for cotton fabrics'),
('SUP002', 'Narmada Yarns', 'Pooja Sharma', 'contact@narmadayarns.com', '9898989898', '9888888888', 'Survey No 45', 'Opp. GIDC', 'Surat', 'Gujarat', '395007', '24AACCN7890K1Z2', 'AACCN7890K', 'HDFC Bank', '456789012345', 'HDFC0001234', 'Advance', 'Yarn', 'Specializes in dyed yarns'),
('SUP003', 'ChemSol India Ltd', 'Deepak Arora', 'deepak@chemsol.in', '9900990011', NULL, '88-A, Industrial Estate', NULL, 'Kanpur', 'Uttar Pradesh', '208001', '09AADCC2345M1Z9', 'AADCC2345M', 'ICICI Bank', '987654321000', 'ICIC0000987', 'Partial', 'Chemicals', 'Supplies only organic chemicals'),
('SUP004', 'Varun Dyes', 'Sanjay Varma', 'sanjay@varundyes.in', '9797979797', NULL, '21, Near Railway Crossing', 'Bhilwara Road', 'Bhilwara', 'Rajasthan', '311001', '08AABCV5678E1Z1', 'AABCV5678E', 'Axis Bank', '765432109876', 'UTIB0002345', 'Net 15', 'Dyes', 'Known for azo-free dyes'),
('SUP005', 'Sutlej Fabrics', 'Neha Bansal', 'neha@sutlejfab.com', '9988776655', NULL, 'Khasra 100/2', 'Industrial Park', 'Panipat', 'Haryana', '132103', '06AACDE2345R1Z3', 'AACDE2345R', 'Punjab National Bank', '123456789321', 'PUNB0112345', 'Advance', 'Fabric', 'Provides jacquard and dobby fabrics'),
('SUP006', 'Prakash Yarns', 'Manish Jain', 'manish@prakashyarns.in', '9001122334', '9822033445', '42, Cotton Mill Lane', NULL, 'Coimbatore', 'Tamil Nadu', '641001', '33AAGHP1234N1Z5', 'AAGHP1234N', 'Bank of Baroda', '443322110099', 'BARB0CBE001', 'Net 45', 'Yarn', 'Blended and compact yarn specialists'),
('SUP007', 'Bhagirathi Chemicals', 'Rekha Rao', 'info@bhagirathichem.in', '9123456789', NULL, 'Plot No 9', 'MIDC Phase 1', 'Nashik', 'Maharashtra', '422007', '27AACCB5678G1Z8', 'AACCB5678G', 'Yes Bank', '888877776666', 'YESB0000456', 'Advance', 'Chemicals', 'Certified chemical supplier'),
('SUP008', 'Rajasthan Dyers', 'Suresh Rathore', 'suresh@rajdyers.com', '9654321876', '9988771122', '65, Dyeing Zone', NULL, 'Pali', 'Rajasthan', '306401', '08AAACD6789B1Z4', 'AAACD6789B', 'Kotak Bank', '555544443333', 'KKBK0000765', 'Partial', 'Dyes', 'Provides reactive dyes'),
('SUP009', 'TexFab Traders', 'Divya Khurana', 'divya@texfabtraders.com', '9345678901', NULL, '15/7, Mill Street', NULL, 'Erode', 'Tamil Nadu', '638001', '33AAACT2345N1Z3', 'AAACT2345N', 'Union Bank', '101010101010', 'UBIN0530081', 'Net 30', 'Fabric', 'Trusted dealer for silk blend fabrics'),
('SUP010', 'Shree Yarn Mills', 'Alok Rathi', 'alok@shreeyarnmills.in', '9871203456', NULL, 'Plot 44', 'Textile Park', 'Bhiwandi', 'Maharashtra', '421302', '27AADCS7654M1Z2', 'AADCS7654M', 'Canara Bank', '201201201201', 'CNRB0001234', 'Advance', 'Yarn', 'Export quality yarn manufacturer'),

-- Add 30 more in same format below

('SUP011', 'Ganga Chemicals', 'Ramesh Iyer', 'ramesh@gangachem.in', '9873214560', NULL, 'Shed No. 5', 'Chemical Zone', 'Vapi', 'Gujarat', '396195', '24AAGCG4321M1Z9', 'AAGCG4321M', 'IDFC First Bank', '998877665544', 'IDFB0045678', 'Net 60', 'Chemicals', 'Industrial chemicals supplier'),
('SUP012', 'Arihant Dyes House', 'Jyoti Soni', 'jyoti@arihantdyes.com', '9909988776', NULL, '2/45, Dyers Lane', NULL, 'Indore', 'Madhya Pradesh', '452001', '23AAKPA8907R1Z7', 'AAKPA8907R', 'IndusInd Bank', '554433221100', 'INDB0001020', 'Advance', 'Dyes', 'Known for vivid synthetic dyes'),
('SUP013', 'Surya Textiles', 'Pankaj Gupta', 'pankaj@surya.in', '9887766554', '9977554433', '43, Textile Nagar', NULL, 'Ichalkaranji', 'Maharashtra', '416115', '27AACCS9988K1Z6', 'AACCS9988K', 'Federal Bank', '112233445566', 'FDRL0001878', 'Net 15', 'Fabric', 'Popular for low-GSM cottons'),
('SUP014', 'Hari Om Yarns', 'Ankita Thakur', 'ankita@hariomyarns.in', '9090909090', NULL, 'Sector 3A', 'Yarn Complex', 'Ahmedabad', 'Gujarat', '380015', '24AADHV1234B1Z1', 'AADHV1234B', 'Saraswat Bank', '667788990011', 'SRCB0000211', 'Partial', 'Yarn', 'Slub and open-end yarn specialist'),
('SUP015', 'EcoTex Chemicals', 'Kiran Bedi', 'kiran@ecotexchem.com', '9765432109', NULL, '18, Eco Industrial Park', NULL, 'Hyderabad', 'Telangana', '500018', '36AABCE1111K1Z0', 'AABCE1111K', 'DBS Bank', '121212121212', 'DBSS0INDB01', 'Net 45', 'Chemicals', 'Eco-friendly textile chemicals'),

-- ...20 more

('SUP016', 'Mehra Textiles', 'Naveen Mehra', 'naveen@mehratextiles.in', '9817654321', NULL, '11, Weavers Street', NULL, 'Amritsar', 'Punjab', '143001', '03AACCM1122A1Z9', 'AACCM1122A', 'South Indian Bank', '432143214321', 'SIBL0000241', 'Net 30', 'Fabric', 'Linen and cotton fusion fabrics'),
('SUP017', 'Shivam Yarn Co', 'Sonal Singh', 'sonal@shivamyarn.in', '9845678932', NULL, 'D-22, Yarn Market', NULL, 'Salem', 'Tamil Nadu', '636007', '33AADCB3344L1Z5', 'AADCB3344L', 'RBL Bank', '667766554433', 'RATN0000056', 'Advance', 'Yarn', 'Combed yarn producer'),
('SUP018', 'Raj Chemicals', 'Tarun Patel', 'tarun@rajchem.com', '9023456789', NULL, 'A-1, Industrial Area', NULL, 'Ankleshwar', 'Gujarat', '393002', '24AABCR5566J1Z3', 'AABCR5566J', 'Standard Chartered', '334455667788', 'SCBL0036065', 'Partial', 'Chemicals', 'Trusted by pharma-textile industry'),
('SUP019', 'Omkar Dyes Ltd', 'Harshita Yadav', 'harshita@omkardyes.in', '9999888877', NULL, 'Block C', 'Dye Market', 'Ludhiana', 'Punjab', '141008', '03AAACO1122B1Z8', 'AAACO1122B', 'Bank of India', '778899001122', 'BKID0006666', 'Net 30', 'Dyes', 'AZO-free and fluorescent dyes'),
('SUP020', 'Arvind Traders', 'Gaurav Arora', 'gaurav@arvindtraders.in', '9654321098', NULL, 'House No. 67', 'Sector 21', 'Faridabad', 'Haryana', '121001', '06AAACT3344K1Z2', 'AAACT3344K', 'Central Bank of India', '102030405060', 'CBIN0287654', 'Advance', 'Fabric', 'Bulk supplier to garment exporters');

-- Remaining 20 can follow same structure (let me know if you want all 40 in a file or batch).

INSERT INTO suppliers (supplierId, supplierName, contactPerson, email, phone, alternatePhone, addressLine1, addressLine2, city, state, postalCode, gstNumber, panNumber, bankName, bankAccountNumber, ifscCode, paymentTerms, supplyCategory, remarks)
VALUES
('SUP021', 'Annapurna Fabrics', 'Kajal Joshi', 'kajal@annapurnafab.com', '9876060606', NULL, 'Plot 16', 'Textile Complex', 'Nagpur', 'Maharashtra', '440018', '27AACCA9988A1Z3', 'AACCA9988A', 'HDFC Bank', '445566778899', 'HDFC0002398', 'Net 15', 'Fabric', 'Good quality synthetic blends'),
('SUP022', 'Shree Ganesh Textiles', 'Ankit Tiwari', 'ankit@sgtextiles.in', '9944556677', NULL, 'Gali No 10', 'Near Bhagirath Market', 'Delhi', 'Delhi', '110006', '07AAGCT1111P1Z5', 'AAGCT1111P', 'ICICI Bank', '223344556677', 'ICIC0000245', 'Advance', 'Fabric', 'Deals in printed fabrics'),
('SUP023', 'Om Yarn Suppliers', 'Sneha Kapoor', 'sneha@omyarn.in', '9988771122', NULL, 'Shop 24', 'Yarn Bazaar', 'Solapur', 'Maharashtra', '413002', '27AACCM7654F1Z7', 'AACCM7654F', 'Axis Bank', '887766554433', 'UTIB0000178', 'Net 30', 'Yarn', 'Polyester and cotton yarn supplier'),
('SUP024', 'Nirav Chemicals Pvt Ltd', 'Ketan Shah', 'ketan@niravchem.in', '9022567890', NULL, 'Survey No. 77', 'GIDC Vatva', 'Ahmedabad', 'Gujarat', '382445', '24AAACN2222R1Z0', 'AAACN2222R', 'Kotak Bank', '111122223333', 'KKBK0004567', 'Partial', 'Chemicals', 'Specialty textile chemicals'),
('SUP025', 'Heritage Dyes', 'Ila Menon', 'ila@heritagedyes.com', '9765432123', NULL, 'Door No. 9', 'Dyeing Unit Street', 'Madurai', 'Tamil Nadu', '625001', '33AAGFH3333K1Z1', 'AAGFH3333K', 'Indian Bank', '123321123321', 'IDIB000M123', 'Net 45', 'Dyes', 'Natural and vegetable-based dyes'),
('SUP026', 'Veekay Textiles', 'Vipul Khanna', 'vipul@veekay.in', '9811234567', '9821234567', 'Sector 20', 'Opp. Textile Mall', 'Noida', 'Uttar Pradesh', '201301', '09AAACV8888E1Z5', 'AAACV8888E', 'Punjab National Bank', '555566667777', 'PUNB0056789', 'Advance', 'Fabric', 'Bulk linen exporter'),
('SUP027', 'Devendra Yarns', 'Mitali Desai', 'mitali@devyarns.in', '9977554400', NULL, 'Flat No. 2', 'Shivaji Nagar', 'Pune', 'Maharashtra', '411005', '27AAACD9999L1Z8', 'AAACD9999L', 'Bank of Maharashtra', '660066007700', 'MAHB0000222', 'Net 30', 'Yarn', 'Known for hosiery yarn'),
('SUP028', 'Green Chem India', 'Rahul Nair', 'rahul@greenchem.in', '9033456767', NULL, 'Plot No. 48', 'Phase 2, IDA', 'Hyderabad', 'Telangana', '500062', '36AACCG2323N1Z9', 'AACCG2323N', 'Canara Bank', '909090808080', 'CNRB0001230', 'Partial', 'Chemicals', 'Eco-certified supplier'),
('SUP029', 'Rana Dyers', 'Kavita Rana', 'kavita@ranadyers.com', '9898981212', NULL, 'Village Basantpur', 'Near NH 24', 'Bareilly', 'Uttar Pradesh', '243001', '09AABCR2345E1Z2', 'AABCR2345E', 'Bank of India', '343434343434', 'BKID0005678', 'Net 30', 'Dyes', 'Bulk reactive dyes'),
('SUP030', 'LoomMart', 'Girish Agarwal', 'girish@loommart.in', '9111223344', NULL, 'Building No 19', 'Banjara Layout', 'Bengaluru', 'Karnataka', '560043', '29AACCM0001D1Z4', 'AACCM0001D', 'Union Bank', '565656787878', 'UBIN0530078', 'Advance', 'Fabric', 'Digital printed fabrics'),
('SUP031', 'Sapphire Yarns', 'Anuja Rao', 'anuja@sapphireyarns.com', '9123987654', NULL, 'Plot 3B', 'Kalamassery Industrial Estate', 'Kochi', 'Kerala', '682033', '32AACCS9987L1Z5', 'AACCS9987L', 'Federal Bank', '202020202020', 'FDRL0001541', 'Net 15', 'Yarn', 'Viscose and modal yarns'),
('SUP032', 'Bhavya Chemicals', 'Shubham Dubey', 'shubham@bhavyachem.in', '9009009001', NULL, 'Block D-23', 'MIDC Taloja', 'Navi Mumbai', 'Maharashtra', '410208', '27AABCB6677Q1Z1', 'AABCB6677Q', 'IDBI Bank', '878787656565', 'IBKL0000456', 'Net 60', 'Chemicals', 'Deals in optical brighteners'),
('SUP033', 'Elite Dyes', 'Tanvi Joshi', 'tanvi@elitedyes.com', '9056781234', NULL, 'Shop 9, Dye Market', NULL, 'Bhopal', 'Madhya Pradesh', '462001', '23AABCE5566F1Z8', 'AABCE5566F', 'Bank of Baroda', '909090909090', 'BARB0BHOPAL', 'Advance', 'Dyes', 'Specialist in vat dyes'),
('SUP034', 'Tradewell Textiles', 'Anil Saxena', 'anil@tradewell.in', '9820011122', NULL, 'Industrial Plot No. 77', NULL, 'Kanpur', 'Uttar Pradesh', '208012', '09AAACT7890Z1Z1', 'AAACT7890Z', 'ICICI Bank', '707070707070', 'ICIC0001111', 'Net 30', 'Fabric', 'Uniform fabrics supplier'),
('SUP035', 'Kalyani Yarn Co.', 'Meera Shah', 'meera@kalyaniyarns.in', '9832211223', NULL, 'W-51, Industrial Estate', 'Near Bypass', 'Howrah', 'West Bengal', '711104', '19AACCK4455H1Z9', 'AACCK4455H', 'Bandhan Bank', '606060606060', 'BDBL0001234', 'Advance', 'Yarn', 'Spun polyester specialist');

CREATE TABLE quotations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quotationId VARCHAR(20) UNIQUE NOT NULL,
    customerName VARCHAR(100) NOT NULL,
    customerEmail VARCHAR(100),
    customerPhone VARCHAR(20),
    productName VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    unitPrice DECIMAL(10,2) NOT NULL,
    totalPrice DECIMAL(12,2) AS (quantity * unitPrice) STORED,
    quotationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    validTill DATE,
    status VARCHAR(20) DEFAULT 'Pending', -- Pending, Approved, Rejected
    remarks TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO quotations (quotationId, customerName, customerEmail, customerPhone, productName, quantity, unitPrice, quotationDate, validTill, status, remarks)
VALUES
('QUO001', 'Asha Enterprises', 'ashaenterprises@gmail.com', '9876543210', 'Cotton Fabric', 500, 250.00, '2025-06-12 10:00:00', '2025-06-19', 'Pending', 'Urgent requirement'),
('QUO002', 'TrendTex Pvt Ltd', 'trendtexpvtltd@gmail.com', '9898765432', 'Polyester Yarn', 800, 180.50, '2025-06-10 11:30:00', '2025-06-17', 'Approved', ''),
('QUO003', 'Elegant Threads', 'elegantthreads@gmail.com', '9123456789', 'Silk Material', 300, 420.75, '2025-06-08 09:15:00', '2025-06-15', 'Rejected', 'Needs price revision'),
('QUO004', 'Fabrix India', 'fabrixindia@gmail.com', '9345678901', 'Printed Cotton', 450, 200.00, '2025-06-05 14:45:00', '2025-06-12', 'Pending', ''),
('QUO005', 'Nova Garments', 'novagarments@gmail.com', '9001122334', 'Blended Fabric', 600, 270.00, '2025-06-01 16:20:00', '2025-06-08', 'Approved', 'Include delivery charges'),
('QUO006', 'Knit & Stitch', 'knitandstitch@gmail.com', '9012233445', 'Dyed Fabric', 350, 190.75, '2025-05-30 13:00:00', '2025-06-06', 'Pending', ''),
('QUO007', 'Loom Legends', 'loomlegends@gmail.com', '9099888777', 'Cotton Fabric', 700, 230.00, '2025-06-02 10:10:00', '2025-06-09', 'Approved', ''),
('QUO008', 'Chikankari Hub', 'chikankarihub@gmail.com', '9786543210', 'Linen Fabric', 200, 350.00, '2025-06-03 12:45:00', '2025-06-10', 'Rejected', 'Bulk order possible'),
('QUO009', 'Design Drapes', 'designdrapes@gmail.com', '9865432109', 'Polyester Yarn', 750, 185.20, '2025-06-06 15:30:00', '2025-06-13', 'Pending', ''),
('QUO010', 'WeaveWell', 'weavewell@gmail.com', '9543210987', 'Dyed Fabric', 500, 210.00, '2025-06-04 08:50:00', '2025-06-11', 'Approved', '');

INSERT INTO quotations (quotationId, customerName, customerEmail, customerPhone, productName, quantity, unitPrice, quotationDate, validTill, status, remarks)
VALUES
('QUO011', 'Urban Textiles', 'urbantextiles@gmail.com', '9023456789', 'Cotton Fabric', 620, 240.50, '2025-06-01 10:15:00', '2025-06-08', 'Pending', ''),
('QUO012', 'Silk Saga', 'silksaga@gmail.com', '9109876543', 'Silk Material', 320, 410.00, '2025-05-30 11:25:00', '2025-06-06', 'Approved', 'Urgent requirement'),
('QUO013', 'Golden Looms', 'goldenlooms@gmail.com', '9234567890', 'Printed Cotton', 480, 205.25, '2025-06-02 09:45:00', '2025-06-09', 'Rejected', 'Needs price revision'),
('QUO014', 'Cotton Castle', 'cottoncastle@gmail.com', '9345678910', 'Cotton Fabric', 540, 250.00, '2025-06-05 14:00:00', '2025-06-12', 'Pending', ''),
('QUO015', 'Denim Duniya', 'denimduniya@gmail.com', '9765432101', 'Blended Fabric', 610, 280.00, '2025-06-06 12:40:00', '2025-06-13', 'Approved', ''),
('QUO016', 'Spindle & Yarn', 'spindleyarn@gmail.com', '9876543012', 'Polyester Yarn', 750, 195.00, '2025-06-08 15:15:00', '2025-06-15', 'Pending', ''),
('QUO017', 'Threads & Co', 'threadsco@gmail.com', '9456781230', 'Dyed Fabric', 390, 185.75, '2025-06-03 13:10:00', '2025-06-10', 'Rejected', 'Bulk order possible'),
('QUO018', 'Elite Fashion House', 'elitefashion@gmail.com', '9123098765', 'Cotton Fabric', 430, 240.00, '2025-06-04 10:50:00', '2025-06-11', 'Approved', ''),
('QUO019', 'Moda Mills', 'modamills@gmail.com', '9012349876', 'Silk Material', 360, 425.00, '2025-06-07 16:00:00', '2025-06-14', 'Pending', ''),
('QUO020', 'FabNest', 'fabnest@gmail.com', '9009876543', 'Linen Fabric', 290, 370.00, '2025-06-06 11:20:00', '2025-06-13', 'Approved', ''),
('QUO021', 'KnitKing', 'knitking@gmail.com', '9988776655', 'Dyed Fabric', 470, 200.00, '2025-06-02 09:30:00', '2025-06-09', 'Pending', 'Include delivery charges'),
('QUO022', 'The Drape Studio', 'drapestudio@gmail.com', '9678901234', 'Polyester Yarn', 780, 190.00, '2025-06-01 10:25:00', '2025-06-08', 'Rejected', ''),
('QUO023', 'ColorCraft Clothing', 'colorcraft@gmail.com', '9988001122', 'Printed Cotton', 510, 215.00, '2025-06-05 13:35:00', '2025-06-12', 'Pending', 'Urgent requirement'),
('QUO024', 'Velvet Vibe', 'velvetvibe@gmail.com', '9456123789', 'Silk Material', 310, 440.50, '2025-06-07 14:45:00', '2025-06-14', 'Approved', ''),
('QUO025', 'Textile Treasures', 'textiletreasures@gmail.com', '9356789021', 'Cotton Fabric', 560, 255.00, '2025-06-08 09:50:00', '2025-06-15', 'Pending', ''),
('QUO026', 'LoomLuxe', 'loomluxe@gmail.com', '9767893456', 'Blended Fabric', 590, 275.25, '2025-06-03 12:15:00', '2025-06-10', 'Approved', ''),
('QUO027', 'PureCot Trends', 'purecottrends@gmail.com', '9456701234', 'Dyed Fabric', 440, 205.00, '2025-06-02 11:45:00', '2025-06-09', 'Rejected', 'Needs price revision'),
('QUO028', 'Rainbow Fashions', 'rainbowfashions@gmail.com', '9345098765', 'Linen Fabric', 310, 360.00, '2025-06-06 15:30:00', '2025-06-13', 'Pending', ''),
('QUO029', 'Woven World', 'wovenworld@gmail.com', '9009988776', 'Cotton Fabric', 470, 245.75, '2025-06-05 10:00:00', '2025-06-12', 'Approved', ''),
('QUO030', 'Design Drapes', 'designdrapes@gmail.com', '9865432109', 'Polyester Yarn', 700, 190.00, '2025-06-04 14:10:00', '2025-06-11', 'Pending', '');


