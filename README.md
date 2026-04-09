# Inventory Demand & Availability Dashboard

### Dashboard Overview

This dashboard analyzes product demand, availability, and financial performance to help businesses optimize inventory management and reduce losses.

---

## Problem Statement

This dashboard helps the business understand the gap between product demand and availability. It highlights supply shortages, financial losses, and inefficiencies in inventory management.

Through this dashboard, decision-makers can identify areas where demand exceeds supply and take necessary actions to improve inventory planning and reduce losses.

Since the **average demand is significantly higher than availability**, it indicates consistent supply shortages.

Also, the **total loss (8M) is much higher than total profit (301K)**, which shows major inefficiencies in inventory and supply chain management.

---

## Steps Followed

* **Step 1:** Loaded dataset into Power BI Desktop from MySQL database.
* **Step 2:** Opened Power Query Editor and enabled:

  * Column Distribution
  * Column Quality
  * Column Profile
* **Step 3:** Switched profiling to entire dataset for accurate analysis.
* **Step 4:** Cleaned data and handled null/missing values where required.
* **Step 5:** Created necessary calculated measures using DAX.
* **Step 6:** Designed dashboard theme and layout for better visualization.
* **Step 7:** Created KPI cards for:

  * Average Demand
  * Average Availability
  * Supply Shortage
* **Step 8:** Added slicers (filters) for:

  * Order Date
  * Product Name
* **Step 9:** Created financial KPI visuals:

  * Total Profit
  * Total Loss
  * Average Daily Loss
* **Step 10:** Structured dashboard into two pages:

  * Demand vs Availability
  * Profit & Loss Analysis

---

# Snapshot of Dashboard (Power BI Service)

<img width="1778" height="743" alt="Image" src="https://github.com/user-attachments/assets/d23ee14d-e383-4442-ad7b-d5660c43b7e3" />

---

<img width="1785" height="740" alt="Image" src="https://github.com/user-attachments/assets/244eb840-ef8f-41d8-b71e-dc23d3111136" />

---

# Insights

A two-page dashboard was created on Power BI Desktop to analyze inventory and financial performance.

---

### [1] Demand vs Availability Analysis

* Average Demand per Day = **48.65**
* Average Availability per Day = **24.70**
* Total Supply Shortage = **61K**

-> Demand is almost **2x higher than availability**, indicating major supply shortages.
-> This leads to missed sales opportunities and customer dissatisfaction.

---

### [2] Profit & Loss Analysis

* Total Profit = **301K**
* Total Loss = **8M**
* Average Daily Loss = **2.97K**

-> Loss is significantly higher than profit.
-> Indicates poor inventory planning and inefficiencies in operations.

---

### [3] Key Observations

* High mismatch between demand and supply
* Continuous supply shortages across products
* Financial losses dominating profits
* Inefficient inventory distribution

---

### [4] Business Insights

* Inventory levels are not aligned with demand patterns
* High-demand products are understocked
* Losses may be due to:

  * Stockouts (lost sales)
  * Overstocking (holding cost)

---

## Recommendations

* Implement **demand forecasting models**
* Maintain optimal **safety stock levels**
* Improve **inventory replenishment strategies**
* Focus on high-demand products
* Use dashboards for real-time monitoring

---

## Conclusion

This project demonstrates how data analytics can uncover inefficiencies in inventory management.
By using Power BI dashboards, businesses can improve supply chain performance, reduce losses, and make data-driven decisions.

---

## Project Files

*  Power BI Dashboard (.pbix)
*  MySQL Dataset
*  SQL Queries

---

