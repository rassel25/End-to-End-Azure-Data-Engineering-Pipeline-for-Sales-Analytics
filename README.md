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

