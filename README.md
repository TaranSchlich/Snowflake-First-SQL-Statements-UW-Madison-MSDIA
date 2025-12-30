# Snowflake-First-SQL-Statements-UW-Madison-MSDIA
**By: Taran Schlichtmann**
**Date: 10/07/2025**

---

## Business Context
Executed foundational SQL queries in Snowflake against the TPCDS_SF10TCL database to answer key business questions on warehouses, promotions, pricing, and carriers. Exported results to Excel with separate tabs per query and documented methodology for reproducibility.

---

## Repository Structure
```
.
├── sql/
│   └── Assignment 1 - First SQL Statements.sql
├── outputs/
│   └── GB882_Assignment 1_First SQL Statements_Schlichtmann_T.xlsx
└── README.md
```

---

## How to Reproduce
1. Create a Snowflake worksheet and select the `CLASSWORK` warehouse and `TPCDS_SF10TCL` database.
2. Run queries from `sql/Assignment 1 - First SQL Statements.sql`.
3. Export results to Excel, one sheet per query, as shown in `outputs/GB882_Assignment 1_First SQL Statements_Schlichtmann_T.xlsx`.

---

## Queries Summary
```sql
/* Warehouses in West Virginia */
SELECT COUNT(*) AS num_warehouses_wv FROM warehouse WHERE w_state = 'WV';

/* Total warehouse square feet */
SELECT SUM(w_warehouse_sq_ft) AS warehouse_total_sf FROM warehouse;

/* Active promotions */
SELECT COUNT(*) AS completed_promotions FROM promotion WHERE p_discount_active = 'Y';

/* Product carriers */
SELECT DISTINCT sm_carrier FROM ship_mode ORDER BY sm_carrier;

/* Most expensive product */
SELECT MAX(i_current_price) AS most_expensive_product FROM item;

/* Average product price */
SELECT ROUND(AVG(i_current_price), 2) AS average_product_price FROM item;

/* Products per category */
SELECT i_class, COUNT(*) AS num_products FROM item GROUP BY i_class ORDER BY num_products DESC;
```

---

## Results
- Warehouses in WV: **4**
- Total warehouse square feet: **13,174,426**
- Active marketing campaigns: **0**
- Most expensive product: **99.99**
- Average product price: **9.27**
- Carriers: See Excel sheet (UPS included)

---

## License
MIT — Educational use only.
