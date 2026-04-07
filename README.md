# 🏠 Airbnb End-to-End Data Engineering Pipeline

## 📌 Executive Summary
This project implements a scalable, production-grade data pipeline for Airbnb data using Snowflake, dbt, and AWS. It transforms raw data into analytics-ready datasets using a Medallion Architecture (Bronze → Silver → Gold).

The solution demonstrates best practices in data modeling, transformation, and historical tracking to support business decision-making.

---

## 🎯 Business Problem
Airbnb platforms generate large volumes of booking, listing, and host data. Without proper data engineering:
- Data is inconsistent and unreliable  
- Historical changes are lost  
- Analytics becomes inefficient  

### ✅ Solution
A structured data pipeline that:
- Cleans and standardizes raw data  
- Tracks historical changes (SCD Type 2)  
- Produces business-ready datasets  

---

## 🏗️ Architecture
CSV Files → AWS S3 → Snowflake (Staging) → Bronze → Silver → Gold  

### Layers
- **Bronze** → Raw ingestion  
- **Silver** → Cleaned and validated data  
- **Gold** → Analytics-ready datasets  

---

## ⚙️ Tech Stack
- Snowflake (Data Warehouse)  
- dbt (Transformation)  
- AWS S3 (Storage)  
- Python 3.12+  
- Git (Version Control)  

---

## 📊 Data Model

### 🥉 Bronze Layer
- Raw bookings  
- Raw hosts  
- Raw listings  

### 🥈 Silver Layer
- Cleaned bookings  
- Enhanced host data  
- Standardized listings  

### 🥇 Gold Layer
- Fact table  
- OBT (One Big Table for analytics)  

### 📌 Historical Tracking
- Implemented SCD Type 2 using dbt snapshots  

---

## 🚀 Key Features

- **Incremental Loading** → Processes only new/updated records  
- **Data Quality Checks** → Not null, unique, referential integrity  
- **Reusable Macros** → Price categorization, string utilities  
- **Dynamic SQL (Jinja)** → Scalable transformations  
- **Data Lineage** → End-to-end visibility using dbt docs  

---

## 📈 Business Impact
- Enables analysis of booking trends and seasonality  
- Supports pricing optimization strategies  
- Helps evaluate host performance metrics  
- Provides clean datasets for BI tools and reporting  

---

## 🛠️ Setup Instructions

### Clone Repository
git clone <repo-url>  
cd AWS_DBT_Snowflake  

### Create Virtual Environment
python -m venv .venv  
source .venv/bin/activate   (Linux/Mac)  
.venv\Scripts\activate      (Windows)  

### Install Dependencies
pip install -e .  

### Configure Snowflake
Update ~/.dbt/profiles.yml with your Snowflake credentials  

---

## ▶️ Run Pipeline

cd aws_dbt_snowflake_project  

dbt debug      (Test connection)  
dbt deps       (Install dependencies)  
dbt build      (Run models, tests, snapshots)  
dbt docs serve (View lineage & documentation)  

---

## 📂 Project Structure

AWS_DBT_Snowflake/  
├── SourceData/          → Raw CSV files  
├── DDL/                 → Table creation scripts  
├── aws_dbt_snowflake_project/  
│   ├── models/          → Bronze, Silver, Gold layers  
│   ├── macros/          → Reusable SQL logic  
│   ├── snapshots/       → SCD Type 2  
│   ├── tests/           → Data quality checks  

---

## 🔐 Best Practices
- Modular dbt modeling  
- Incremental pipelines for scalability  
- Secure credential management  
- Version-controlled transformations  

---

## 🔮 Future Improvements
- CI/CD pipeline integration  
- Data quality dashboards  
- BI integration (Power BI / Tableau)  
- Monitoring and alerting  
- Data governance and masking  

---

## 👤 Author
Airbnb Data Engineering Project  
Built using Snowflake, dbt, AWS  
