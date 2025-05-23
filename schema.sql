-- Create Dimension Tables

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    quarter INT,
    year INT
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(255),
    category NVARCHAR(100),
    brand NVARCHAR(100)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name NVARCHAR(255),
    region NVARCHAR(100)
);

-- Create Fact Table

CREATE TABLE fact_sales (
    sales_id INT IDENTITY(1,1) PRIMARY KEY,
    date_id INT,
    product_id INT,
    store_id INT,
    quantity_sold INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);


-- Load dim_date.csv
BULK INSERT dim_date
FROM 'C:\Users\Admin\Downloads\Retail_Data_Warehouse_Lab\dim_date.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TEXTQUALIFIER = '"',
    TABLOCK
);

-- Load dim_product.csv
BULK INSERT dim_product
FROM 'C:\Users\Admin\Downloads\Retail_Data_Warehouse_Lab\dim_product.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TEXTQUALIFIER = '"',
    TABLOCK
);

-- Load dim_store.csv
BULK INSERT dim_store
FROM 'C:\Users\Admin\Downloads\Retail_Data_Warehouse_Lab\dim_store.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TEXTQUALIFIER = '"',
    TABLOCK
);

-- Load fact_sales.csv
BULK INSERT fact_sales
FROM 'C:\Users\Admin\Downloads\Retail_Data_Warehouse_Lab\fact_sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TEXTQUALIFIER = '"',
    TABLOCK
);
