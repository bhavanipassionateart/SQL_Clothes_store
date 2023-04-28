--
-- File generated with SQLiteStudio v3.4.3 on Thu Apr 27 00:07:16 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Brand
DROP TABLE IF EXISTS Brand;

CREATE TABLE IF NOT EXISTS Brand (
    Brand_id    INTEGER PRIMARY KEY AUTOINCREMENT
                        UNIQUE
                        NOT NULL,
    Brand_name  TEXT    NOT NULL,
    Category_id INTEGER REFERENCES Category (Category_id),
    Product_id  INTEGER
);

INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (1, 'Monk', 1, 1);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (2, 'Levi''s', 9, 9);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (3, 'The Sheet', 3, 3);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (4, 'COS', 7, 7);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (5, 'Roxy', 5, 5);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (6, 'File', 8, 8);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (7, 'Weekday', 2, 2);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (8, 'Aim''n', 4, 4);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (9, 'Timberland', 6, 6);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (10, 'GoodAmerican', 1, 1);
INSERT INTO Brand (Brand_id, Brand_name, Category_id, Product_id) VALUES (11, 'Speedos', 3, 3);

-- Table: Category
DROP TABLE IF EXISTS Category;

CREATE TABLE IF NOT EXISTS Category (
    Category_id   INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    Category_name TEXT    NOT NULL,
    Brand         TEXT
);

INSERT INTO Category (Category_id, Category_name, Brand) VALUES (1, 'Dresses', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (2, 'Peaks', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (3, 'Shirts_&_blouses', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (4, 'Hoodies_&_blouses', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (5, 'Swimwear', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (6, 'Shorts', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (7, 'Jeans', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (8, 'Pants', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (9, 'Jeans', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (10, 'Jumpsuits', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (11, 'Skirts', NULL);
INSERT INTO Category (Category_id, Category_name, Brand) VALUES (12, 'Blazers', NULL);

-- Table: Customer_Address
DROP TABLE IF EXISTS Customer_Address;

CREATE TABLE IF NOT EXISTS Customer_Address (
    Street_name  TEXT    NOT NULL,
    Location     TEXT    NOT NULL,
    County_name  TEXT    NOT NULL,
    Country_name TEXT    NOT NULL,
    Zip_code     INTEGER NOT NULL
);


-- Table: Customers
DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (
    Customer_id  INTEGER PRIMARY KEY AUTOINCREMENT
                         UNIQUE
                         NOT NULL,
    first_name   TEXT    NOT NULL,
    Last_name    TEXT,
    email        TEXT    NOT NULL,
    Phone_number INTEGER NOT NULL
);


-- Table: Product_description
DROP TABLE IF EXISTS Product_description;

CREATE TABLE IF NOT EXISTS Product_description (
    Product_description_id INTEGER NOT NULL
                                   PRIMARY KEY,
    Product_size           INTEGER NOT NULL,
    Product_color          TEXT    NOT NULL,
    Brand_id               INTEGER REFERENCES Brand (Brand_id) 
                                   NOT NULL,
    Product_id             INTEGER REFERENCES Products (Product_id) 
);

INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (1, 'M', 'Black', 1, 3);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (2, 'S', 'Blue', 7, 5);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (3, 'M', 'White', 3, 6);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (4, 'L', 'Grey', 8, 2);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (5, 'S', 'Blue', 5, 7);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (6, 'M', 'White', 9, 4);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (7, 'L', 'Black', 4, 1);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (8, 'L', 'Yellow', 6, 9);
INSERT INTO Product_description (Product_description_id, Product_size, Product_color, Brand_id, Product_id) VALUES (9, 'S', 'Blue', 2, 1);

-- Table: Products
DROP TABLE IF EXISTS Products;

CREATE TABLE IF NOT EXISTS Products (
    Product_id   INTEGER PRIMARY KEY AUTOINCREMENT
                         UNIQUE
                         NOT NULL,
    Category_id  INTEGER REFERENCES Category (Category_id),
    Product_name TEXT
);

INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (1, 1, 'Jacquard woven wrap dress');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (2, 2, 'Tube_Top');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (3, 3, 'Shirt_in_linen_mix');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (4, 4, 'Monk_jaket');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (5, 5, 'High Denim Shorts');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (6, 6, 'High _Denim _Shorts ');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (7, 7, 'Slim_ High _Ankle Jeans');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (8, 8, 'At twill trousers');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (9, 9, 'jeans');
INSERT INTO Products (Product_id, Category_id, Product_name) VALUES (10, 10, 'Jumpsuit _in _satin');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
