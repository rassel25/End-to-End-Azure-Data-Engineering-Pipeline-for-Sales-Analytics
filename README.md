# 🚀 End-to-End Azure Data Engineering Pipeline (Sales Analytics)

## 👋 Introduction

This project demonstrates a complete, production-style **Azure data engineering pipeline** built to ingest, transform, and analyze **sales data** from GitHub all the way to Power BI. It reflects real-world data engineering practices, including cloud orchestration, lakehouse architecture, incremental processing, and business-focused reporting.

The goal is to show how raw sales data can be transformed into actionable insights using scalable Azure services.

---

## 🏗️ Architecture Overview

### 🔄 Data Flow Summary

1. **GitHub** hosts raw sales data files.  
2. **Azure SQL Database** acts as the structured landing zone.  
3. **Azure Data Factory** orchestrates ingestion from SQL to Data Lake.  
4. **Azure Data Lake Gen2** stores data in Bronze, Silver, and Gold layers.  
5. **Azure Databricks** performs cleaning, transformation, and modeling.  
6. **Delta Lake** provides optimized storage for analytics.  
7. **Power BI** visualizes sales KPIs and insights.

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/7a73f92d-083b-4536-aaa6-e79d8cc469bf" />

---

## 🧰 Technologies Used

| Layer            | Tools & Services                     |
|------------------|--------------------------------------|
| Source Control   | GitHub                               |
| Database         | Azure SQL Database                   |
| Orchestration    | Azure Data Factory                   |
| Storage          | Azure Data Lake Gen2, Delta Lake     |
| Processing       | Azure Databricks                     |
| Reporting        | Power BI                             |
| Security         | Azure RBAC, Managed Identity, Encryption |

### ⭐⭐⭐ Important points to remember while creating resources in the Resource group
➤ **Storage account**: 
1. Select **LRS Redundancy** to have the lowest cost
2. Check the box **Enable hierarchical namespace** to have storage as Data Lake; otherwise, Blob storage will be created
3. Select **Access tier** according to your use case: For frequent data access: Hot, For infrequent data access: Cool, For rarely data access: Cold

➤ **SQL Server**:
1. One SQL server can have several databases

➤ **Azure Data Factory**:
1. We use linked services to connect ADF to sources
2. In the real world, we use a parameterized dataset

➤ **Incremental Loading**:   
1. At first, we should create a Watermark table to contain the date lower than the minimum date in the dataset.
2. As the pipeline runs, a stored procedure is used to replace the date in the Watermark table with the latest date of the dataset
3. incremental load_date > last_load_date AND incremental load_date <= current_load_date

➤ **Databricks**:
1. Pricing Tier should be Premium to use Unity Catalogue
2. Unity Catalog is used to secure, track, and keep all your data assets in one single place
3. SCD is only for Dimension tables. We are using SCD Type 1(upsert) in our gold layer for incremental loading.
4. We chose SCD Type 1(upsert) because the business only needed the latest attribute values, not historical versions, and SCD Type 2 would have added unnecessary complexity. 
5. We always create the dimension table first, then the fact table

---

## 📦 Sales Data Description

The dataset simulates real-world sales operations and includes fields such as:

- Order ID  
- Customer ID  
- Product details  
- Quantity  
- Unit price  
- Order date  
- Region / Store  
- Sales amount  
- Discounts / promotions  

This enables analytics such as:

- Revenue and profit trends  
- Top-performing products  
- Regional sales performance  
- Customer segmentation  
- Forecasting opportunities  

---

## 🧮 Data Flow & Lakehouse Layers

### 🥉 Bronze Layer — Raw Data
- Direct ingestion from Azure SQL  
- Stored in Parquet format  
- No transformations applied  

### 🥈 Silver Layer — Cleaned Data
- Standardized column names  
- Data type corrections  
- Deduplication  
- Normalized product and customer attributes  

### 🥇 Gold Layer — Curated Data
Two models are created:

#### ⭐ Star Schema

<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/6ea7d41f-764c-4612-8dc1-447376a98bd4" />

- **fact_sales**  
- **dim_customer**  
- **dim_product**  
- **dim_date**  
- **dim_region**  

#### 📘 One Big Table (OBT)
- Flattened table for fast dashboarding  
- Ideal for Power BI import mode  

---

## 🔧 Pipeline Components

### 1. **GitHub (Source)**
- Stores raw sales data  
- Version control for pipeline scripts  

### 2. **Azure SQL Database (Landing Zone)**
- Structured staging area  
- Schema enforcement  

### 3. **Azure Data Factory (Ingestion)**
- Pipelines for incremental loads  
- Linked services and datasets  
- Scheduling and monitoring  

### 4. **Azure Data Lake Gen2 (Storage)**
- Bronze, Silver, Gold containers  
- Parquet + Delta formats  

### 5. **Azure Databricks (Transformation)**
- PySpark notebooks  
- Business logic implementation  
- Star schema creation  

### 6. **Delta Lake (Serving Layer)**
- ACID transactions  
- Time travel  
- Optimized for BI tools  

### 7. **Power BI (Reporting)**
- Connects to Gold layer  
- Interactive dashboards  

## ⚙️ Setup Instructions

### Prerequisites
- Azure subscription  
- GitHub account  
- Power BI Desktop  

### Steps

1. **Clone this repository**  
2. **Deploy Azure SQL Database** and load sample sales data  
3. **Configure Azure Data Factory**  
   - Create linked services  
   - Create datasets  
   - Import pipeline JSON  
4. **Create Data Lake Gen2 containers**  
   - bronze  
   - silver  
   - gold  
5. **Run Databricks notebooks**  
   - Bronze → Silver → Gold transformations  
6. **Connect Power BI** to the Gold layer  
7. **Publish dashboard**  

---

## 📊 Power BI Dashboard Overview

The dashboard includes:

- Total revenue, profit, and order volume  
- Monthly and quarterly sales trends  
- Top products and categories  
- Regional performance heatmaps  
- Customer lifetime value  
- Drill-downs by product, region, and time  

---

## 🔐 Security

- Azure RBAC for access control  
- Managed identities for authentication  
- Data encrypted at rest and in transit  
