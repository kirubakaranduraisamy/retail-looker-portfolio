# Retail Sales & Profitability Analytics

## Project Overview

An end-to-end retail analytics solution built using BigQuery,
SQL, LookML and Looker Studio.

The project transforms raw retail order data into a dimensional
analytics model and exposes governed business metrics through
a LookML semantic layer.

## Tech Stack

- Google BigQuery
- SQL
- LookML
- Looker
- Looker Studio
- Git / GitHub

## Architecture

Raw Retail Data
        ↓
BigQuery
        ↓
Dimensional Model
        ↓
LookML Semantic Layer
        ↓
Looker Explore
        ↓
Looker Studio Dashboard

## Data Model

### Fact Table

`fact_sales`

Contains transactional sales data including:

- Order ID
- Order date
- Customer ID
- Product ID
- Quantity
- Discount
- Sales channel
- Payment method
- Sales
- Profit

### Dimension Tables

`dim_customer`

Customer attributes such as:

- Customer ID
- Customer name
- Segment
- Country
- City

`dim_product`

Product attributes such as:

- Product ID
- Product name
- Category
- Subcategory
- Brand
- Unit cost
- Unit price

`dim_date`

Date attributes used for time-based analysis.

## LookML Modeling

The project uses LookML to define:

- Dimensions
- Measures
- Primary keys
- Dimension groups
- Explore joins
- Relationship types
- Business metrics

## Key Business Metrics

- Total Sales
- Total Profit
- Orders
- Units Sold
- Average Order Value
- Profit Margin

## Dashboard

### Executive Overview

![alt text](<Screenshot 2026-08-27 164918.png>)

### Profitability Analysis

![alt text](<Screenshot 2026-08-27 164953.png>)

### Period Over Profit Margin

![alt text](<Screenshot 2026-08-27 164851.png>)

## Business Questions

The dashboard helps answer:

- What is total revenue and profit?
- Which product categories generate the most revenue?
- Which countries drive sales?
- Which sales channels perform best?
- How does profitability change over time?
- What is the average order value?
- Which products and customers contribute most to revenue?

## Project Objective

The objective was to build a reusable analytics architecture
rather than a one-off dashboard, separating data modeling,
semantic definitions and visualization.

## Author

Kirubhakaran Duraisamy

GitHub: https://github.com/kirubakaranduraisamy/retail-looker-portfolio