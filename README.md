# Shopping Trends Analysis Dashboard

![Project Preview](images/project-banner.png)  
*A complete end-to-end data analysis pipeline with interactive visualizations.*

---

## 📌 Project Overview

This project demonstrates a **full data analysis workflow** on a **Shopping Trends dataset** (3,900 rows × 19 columns) starting from raw CSV data to a professional **Power BI dashboard**.  
The goal is to extract **key business insights** about **customer behavior, sales trends, and product performance** to support **data-driven decision-making**.

---

## 🔄 Workflow

1. **SQL Data Validation & Cleaning**
   - Imported raw data into **MSSQL**.
   - Checked for **missing values**, **duplicates**, and **outliers**.
   - Validated data types and value ranges for all 19 columns.

2. **Python Exploratory Data Analysis (EDA)**
   - Used **Pandas, Matplotlib, Seaborn, Plotly** for visual analysis.
   - Identified key trends: **seasonal sales patterns, top categories, customer age distribution**.
   - Exported cleaned dataset to Excel for dashboarding.

3. **Power BI Dashboard**
   - Built an **interactive 3-page dashboard** with:
     - **9 KPIs** (e.g., Total Sales, Avg Rating, Subscribed %).
     - **15 Charts** (bar, column, pie, treemap).
     - Dynamic **Slicers** for filtering (Season, Category, Payment Method, etc.).
   - Delivered actionable insights on:
     - Seasonal and regional sales trends.
     - Subscription and discount impact on customer behavior.
     - Top-performing products and categories.

---

## 📊 Dataset Details

- **Rows:** 3,900  
- **Columns:** 19  
- **Key Attributes:**
  - `Age`, `Gender`, `Item_Purchased`, `Category`, `Purchase_Amount_USD`, `Location`
  - `Review_Rating`, `Subscription_Status`, `Payment_Method`, `Season`
  - `Discount_Applied`, `Promo_Code_Used`, `Previous_Purchases`, `Frequency_of_Purchases`

---

## 🖥️ Dashboard Pages

### 1. **Home Page**
- KPIs: Total Sales, Total Customers, Avg Sales, Avg Rating  
- Charts: Seasonal Sales, Top Locations, Sales by Gender, Age Group Distribution  
- Slicers: Season, Category, Location  

### 2. **Insights Page**
- KPIs: Subscribed %, Discount %, Promo %, Avg Previous Purchases  
- Charts: Sales by Payment Method, Sales by Subscription Status, Discount Impact, Category-Age Distribution  
- Slicers: Payment Method, Subscription, Discount Applied  

### 3. **Products Page**
- KPIs: Total Products, Total Categories, Top Selling Product, Avg Rating by Category  
- Charts: Sales by Products, Sales by Category, Top Selling Size, Top Selling Color  
- Slicers: Season, Size, Category  

---

## 📷 Dashboard Preview

*(Add screenshots of the 3 pages here)*

- **Home Page**
![Home](images/home.png)

- **Insights Page**
![Insights](images/insights.png)

- **Products Page**
![Products](images/products.png)

---

## 🛠️ Tech Stack

- **SQL (MSSQL)** – Data Cleaning & Validation  
- **Python (Pandas, Matplotlib, Seaborn, Plotly)** – EDA & Exporting Clean Data  
- **Power BI** – Dashboard Creation & Visualization  

---

## 🚀 Key Results

- Analyzed **3,900 transactions** across **19 attributes**.  
- Built **9 KPIs** and **15 visualizations** to highlight **seasonal, product, and customer insights**.  
- Enabled **interactive filtering** by category, season, payment method, and more.