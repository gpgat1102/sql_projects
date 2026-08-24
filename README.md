# sql_projects
Learning SQL by doing projects



# Project 001: Motorcycle Part Sales

## 📌 Business Context & Scenario
You are working as a data analyst for a company that sells motorcycle parts. The company operates three warehouses (North, Central, and West) and serves two client types (Retail and Wholesale) using various payment methods (Credit card, Transfer, Cash), each incurring unique payment fees. 

The **Board of Directors** requested data to better understand wholesale revenue performance by product line, and how it varies month-to-month and across different warehouses.

## 📝 Project Objective & Instructions
The goal is to calculate the **net revenue** for each product line, grouped by month and warehouse, filtering strictly for **Wholesale** orders.

### Specific Requirements:
- **Query Output Name:** The final result set must be saved as `revenue_by_product_line`.
- **Columns Required:** 
  - `product_line`: The type of product ordered.
  - `month`: Displayed as text strings ('June', 'July', and 'August').
  - `warehouse`: The warehouse location (North, Central, or West).
  - `net_revenue`: Calculated as the sum of `total` minus the sum of `payment_fee`.
- **Sorting:** Results must be sorted by `product_line`, chronologically by `month`, followed by `net_revenue` in descending order.

## 🗄️ Database Schema (`sales` table)
| Column | Data Type | Description |
| :--- | :--- | :--- |
| `order_number` | VARCHAR | Unique order number. |
| `date` | DATE | Date of the order (June to August 2021). |
| `warehouse` | VARCHAR | Warehouse location (North, Central, or West). |
| `client_type` | VARCHAR | Order type (Retail or Wholesale). |
| `product_line` | VARCHAR | Type of product ordered. |
| `quantity` | INT | Number of products ordered. |
| `unit_price` | FLOAT | Price per product (dollars). |
| `total` | FLOAT | Total price of the order (dollars). |
| `payment` | VARCHAR | Payment method (Credit card, Transfer, Cash). |
| `payment_fee` | FLOAT | Percentage fee charged based on payment method. |



