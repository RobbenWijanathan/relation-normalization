# Relational Normalization – Fintech Product Sales Dataset

Normalization of an unclean fintech product sales dataset (sourced from Kaggle) from an unnormalized flat table into **Third Normal Form (3NF)**.

## What's in this repo

| File/Folder | Description |
|---|---|
| `main.ipynb` | Data cleaning & normalization pipeline |
| `output/` | Exported normalized tables as Excel files |
| `sql/product_sales.sql` | DDL + DML for the final 3NF schema |

## Normalization Summary

- **UNF → 1NF**: Atomized `customer_name` (split into name, age, gender) and stripped numeric prefixes from `product_name`
- **1NF → 2NF**: Resolved partial dependencies — split into `orders`, `products`, and `order_items` tables
- **2NF → 3NF**: Resolved transitive dependencies — extracted `customers` table from `orders`