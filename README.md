# Waste Management Data Warehouse (SQL Server)

## 📌 Project Overview

This project implements a **Data Warehouse solution** for a solid waste management company in Brazil. The goal is to enable efficient reporting and analytics on waste collection operations across cities, stations, and truck types.

The project follows a **Star Schema design** and includes:

* Dimension tables
* Fact table
* Data loading from CSV files
* Advanced SQL aggregations
* Materialized view (SQL Server equivalent)

---

## 🏗️ Architecture

The warehouse consists of:

### 📦 Dimension Tables

* **DimDate** – Date hierarchy (year, quarter, month, weekday)
* **DimTruck** – Truck types
* **DimStation** – Station and city information

### 📊 Fact Table

* **FactTrips** – Records waste collection trips and measures waste collected

---

## ⚙️ Technologies Used

* SQL Server (SSMS)
* T-SQL
* CSV Data Loading
* Data Warehousing Concepts

---

## 📥 Data Loading

Data is loaded from CSV files using:

* SQL Server Import Wizard
* BULK INSERT (optional)

---

## 📊 Analytical Queries

### 1. GROUPING SETS

Aggregates waste by:

* Station
* Truck type
* Combined totals

### 2. ROLLUP

Hierarchical aggregation:

* Year → City → Station

### 3. CUBE

All possible combinations:

* Year, City, Station

---

## 📈 Materialized View

A view (`max_waste_stats`) was created to compute:

* Maximum waste collected per city, station, and truck type

> Note: SQL Server does not support indexing views with MAX(), so it is implemented as a standard view.

---

## 🚀 How to Run

1. Create database:

```sql
CREATE DATABASE FinalProject;
USE FinalProject;
```

2. Run scripts in order:

* `/sql/02_schema_design`
* `/sql/03_data_loading`
* `/sql/04_analytics`
* `/sql/05_views`

---

## 📸 Screenshots

All required screenshots are available in:

```
/docs/screenshots/
```

---

## 🎯 Skills Demonstrated

* Data Warehouse Design (Star Schema)
* SQL Query Optimization
* Aggregation Techniques (ROLLUP, CUBE, GROUPING SETS)
* Data Loading & Transformation
* Real-world Data Engineering Workflow

---

## 📌 Author

Mahmoud
Aspiring Data Engineer 🚀
