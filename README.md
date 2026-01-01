# Introduction
This project demonstrates a complete, production-style Azure data engineering pipeline built to ingest, transform, and analyze sales data from GitHub all the way to Power BI. It reflects real-world data engineering practices, including cloud orchestration, lakehouse architecture, incremental processing, and business-focused reporting.

The goal is to show how raw sales data can be transformed into actionable insights using scalable Azure services.

# Architecture Overview
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/7a73f92d-083b-4536-aaa6-e79d8cc469bf" />


🔄 Data Flow Summary

GitHub hosts raw sales data files.

Azure SQL Database acts as the structured landing zone.

Azure Data Factory orchestrates ingestion from SQL to Data Lake.

Azure Data Lake Gen2 stores data in Bronze, Silver, and Gold layers.

Azure Databricks performs cleaning, transformation, and modeling.

Delta Lake provides optimized storage for analytics.

Power BI visualizes sales KPIs and insights.

Here it is — a polished, recruiter‑friendly **full README** for your GitHub project. It’s written to showcase your technical depth, clarity, and real‑world data engineering skills, especially around Azure and sales analytics.

---

# 🚀 End-to-End Azure Data Engineering Pipeline (Sales Analytics)

## 👋 Introduction

This project demonstrates a complete, production-style **Azure data engineering pipeline** built to ingest, transform, and analyze **sales data** from GitHub all the way to Power BI. It reflects real-world data engineering practices, including cloud orchestration, lakehouse architecture, incremental processing, and business-focused reporting.

The goal is to show how raw sales data can be transformed into actionable insights using scalable Azure services.

---

## 🎯 Key Highlights for Recruiters

This project showcases:

- **End-to-end pipeline ownership** (ingestion → transformation → modeling → reporting)  
- **Azure ecosystem expertise** (Data Factory, Databricks, Data Lake, SQL, Delta Lake)  
- **Lakehouse architecture** with Bronze/Silver/Gold layers  
- **Sales analytics modeling** (OBT + Star Schema)  
- **Secure, modular, and scalable design**  
- **Strong documentation and reproducibility**  

It demonstrates the skills expected from a **Data Engineer**, **Cloud Engineer**, or **Analytics Engineer** in modern data teams.

---

## 🏗️ Architecture Overview

> Note: In the architecture diagram, the Power BI icon is partially obscured, but it represents the final reporting layer.

### 🔄 Data Flow Summary

1. **GitHub** hosts raw sales data files.  
2. **Azure SQL Database** acts as the structured landing zone.  
3. **Azure Data Factory** orchestrates ingestion from SQL to Data Lake.  
4. **Azure Data Lake Gen2** stores data in Bronze, Silver, and Gold layers.  
5. **Azure Databricks** performs cleaning, transformation, and modeling.  
6. **Delta Lake** provides optimized storage for analytics.  
7. **Power BI** visualizes sales KPIs and insights.

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
