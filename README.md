# dbt Customer Revenue Analytics

This project demonstrates an analytics engineering workflow using dbt, Snowflake, and GitHub.

The goal is to transform customer and order data into business-ready analytics models that answer questions like:

- Who are our highest-value customers?
- How much revenue does each customer generate?
- Which customers are repeat buyers vs one-time buyers?
- What is daily revenue, order volume, and average order value?
- What share of revenue comes from each customer segment?

## Tech Stack

- dbt Core
- Snowflake
- SQL
- Git / GitHub
- VS Code

## Project Structure

```text
models/
  staging/
    stg_customers.sql
    stg_orders.sql

  marts/
    int_customer_orders.sql
    fct_customer_revenue.sql
    daily_revenue.sql
    customer_segment_summary.sql

## Models

### Staging Models

`stg_customers`  
Creates clean customer-level data.

`stg_orders`  
Creates clean order-level data.

### Intermediate Model

`int_customer_orders`  
Joins customers and orders together.

### Mart Models

`fct_customer_revenue`  
Creates one row per customer with total orders, total revenue, first order date, most recent order date, and customer type.

`daily_revenue`  
Creates one row per day with total orders, total revenue, and average order value.

`customer_segment_summary`  
Summarizes revenue by customer type, such as repeat customers vs one-time customers.

## Data Quality Tests

This project includes dbt tests for:

- Unique customer IDs
- Non-null customer IDs
- Unique order IDs
- Non-null order IDs
- Non-null daily revenue fields
