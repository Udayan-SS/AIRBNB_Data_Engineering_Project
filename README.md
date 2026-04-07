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

CSV Data → AWS S3 → Snowflake (Staging) → Bronze → Silver → Gold

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

### Incremental Loading
Processes only new or updated records to improve performance.

### Data Quality Checks
- Not null tests
- Unique constraints
- Referential integrity

### Reusable Macros
- Price categorization
- String cleaning utilities

### Dynamic SQL (Jinja)
- Scalable query generation

### Data Lineage
- End-to-end visibility using dbt docs

---

## 📈 Business Impact
- Analyze booking trends
- Optimize pricing strategies
- Evaluate host performance
- Enable BI reporting

---

## 🛠️ Setup Instructions

### Clone Repository
bash
git clone <repo-url>
cd AWS_DBT_Snowflake

Create Virtual Environment

python -m venv .venv
source .venv/bin/activate   # Linux/Mac
.venv\Scripts\activate      # Windows

Install Dependencies

pip install -e .

Configure Snowflake

Update ~/.dbt/profiles.yml with your credentials.

▶️ Run Pipeline

cd aws_dbt_snowflake_project

dbt debug      # Test connection
dbt deps       # Install packages
dbt build      # Run models, tests, snapshots
dbt docs serve # View lineage

📂 Project Structure

AWS_DBT_Snowflake/
│
├── SourceData/
├── DDL/
├── aws_dbt_snowflake_project/
│   ├── models/
│   │   ├── bronze/
│   │   ├── silver/
│   │   ├── gold/
│   ├── macros/
│   ├── snapshots/
│   ├── tests/

🔐 Best Practices

Modular dbt models
Incremental pipelines
Secure credential management
Version-controlled transformations

🔮 Future Improvements

CI/CD integration
Data quality dashboards
BI tool integration (Power BI/Tableau)
Monitoring & alerting
Data governance & masking
