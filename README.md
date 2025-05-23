# Data Warehouse Project

## Objective
Design and implement a star schema-based data warehouse to load data 
from CSV files and run analytical queries for business insights.

## 📁 Project Structure

- csv – Contains source data files
- schema.sql – SQL script to create the database schema and load data
- queries.sql – SQL queries for analysis and insights

## Tables

- store: Contains store details
- product: Product information
- sales: Fact table with sales transactions
- date: Time dimension

## Technologies Used

- PostgreSQL (via Supabase)
- SQL
- GitHub for version control

## Discussion Questions

### 1. Why use a star schema instead of a normalized schema?

A star schema is optimized for querying and reporting in analytical systems. Unlike normalized schemas, which aim to reduce redundancy by spreading data across many related tables, a star schema denormalizes data into fewer joins. This structure:

- Makes complex queries faster and simpler
- Is easier for business analysts to understand
- Improves performance in OLAP (Online Analytical Processing) environments

It's ideal for data warehouses where read performance and analytical clarity matter more than storage efficiency.

### 2. What are the benefits of separating facts from dimensions?

Separating facts from dimensions allows us to:
- Store measurable data (facts) like quantity sold, revenue, and transactions in the fact table
- Store descriptive/contextual data (dimensions) like store names, product categories, or dates in dimension tables

This separation:
- Supports clear relationships and reduces data duplication
- Makes it easier to slice and dice data across different angles (e.g., sales by region, time, product)
- Enhances maintainability and scalability of the warehouse

### 3. What types of business decisions could this warehouse support?

This data warehouse can support a variety of strategic and operational decisions, such as:
- Identifying top-performing products or stores
- Understanding seasonal trends or monthly sales patterns
- Comparing regional performance for better resource allocation
- Tracking sales growth over time for planning promotions or restocking
- Supporting marketing, inventory, and sales strategies with data-driven insights

## Collaborators
1. Kevin Korir - 670656
2. Margaret Amondi - 670497
4. BriCole Asiachi - 670834 
5. Alfred Gakinya - 671579






