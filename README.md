# Customer Intelligence Platform

## Overview
A data analytics project that explores customer behavior, sales performance, and product profitability using Excel and PostgreSQL. The project will be extended with Python analytics, machine learning, and an API.

## Project Goals
- Analyze customer and order data.
- Measure revenue, profit, and product performance.
- Identify valuable customer segments.
- Build a foundation for personalized product recommendations.

## Technology Stack
- Microsoft Excel
- PostgreSQL
- pgAdmin 4
- SQL
- Python (planned)

## Database Tables
| Table | Description |
|---|---|
| `customers` | Customer profiles and locations |
| `products` | Product names, categories, prices, and costs |
| `orders` | Order dates and statuses |
| `order_items` | Product quantities, discounts, revenue, and profit |

## Table Relationships
- `customers.customer_id` → `orders.customer_id`
- `orders.order_id` → `order_items.order_id`
- `products.product_id` → `order_items.product_id`

## SQL Analysis
The `sql/` directory contains queries for:
- Filtering and sorting customers
- Aggregating customers by city
- Analyzing product revenue, profit, and profit margin

## Project Structure
```text
customer-intelligence-platform/
├── data/
│   └── raw/
├── sql/
├── docs/
├── ml/
├── api/
├── tests/
├── README.md
└── .gitignore
```

## Setup
1. Install PostgreSQL and pgAdmin.
2. Create a database named `customer_intelligence`.
3. Create the four tables using the project schema.
4. Import the cleaned CSV files in this order: customers, products, orders, order items.
5. Open the SQL files in `sql/` and execute them in pgAdmin.

## Current Progress
- [x] Database tables created
- [x] Data imported and relationships checked
- [x] Basic SQL and business analysis queries written
- [ ] Python exploratory data analysis
- [ ] Recommendation model
- [ ] API development
- [ ] Testing and documentation improvements