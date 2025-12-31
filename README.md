# Building a Data Warehouse from Scratch

## 🎯 Project Overview

This project represents my journey into **data / analytics engineering** — taking data from raw ingestion to a fully modeled, analytics-ready warehouse.

The goal of this project is to design and build a **scalable, maintainable, end-to-end data pipeline** that demonstrates real-world data engineering best practices, including ingestion, transformation, modeling, historization, and orchestration.

At a high level, this project:

- Ingests raw data from source systems (EL)
- Loads raw data into a cloud data warehouse
- Applies transformations using the **Medallion Architecture** (Bronze → Silver → Gold)
- Implements **Slowly Changing Dimensions (SCD)** using dbt snapshots
- Models clean, analytics-ready fact and dimension tables
- Orchestrates pipelines using a workflow orchestration tool

This project is fully version-controlled and designed to be reproducible and extensible.

---

## 🧱 Architecture & Components

### 📦 Tech Stack

- **Data Warehouse:** Snowflake
- **Transformation Tool:** dbt (models, tests, snapshots)
- **Orchestration:** Dagster
- **Version Control:** GitHub

---

## 🧊 Medallion Architecture (Bronze → Silver → Gold)

This project follows the **Medallion Architecture**, a layered approach to organizing data within a modern data warehouse.

### 🥉 Bronze Layer (Raw)
- Raw ingested data from source systems
- Minimal transformation
- Preserves original structure for auditability and replay

### 🥈 Silver Layer (Cleaned / Standardized)
- Data cleansing and normalization
- Deduplication and standardization
- Business rules applied using dbt models

### 🥇 Gold Layer (Business / Analytics)
- Analytics-ready fact and dimension tables
- Optimized for BI tools, dashboards, and reporting
- Clear grain and business definitions

This architecture improves:
- Clarity and separation of concerns
- Scalability and maintainability
- Change management and debugging

---

## 🧾 Slowly Changing Dimensions (SCD) with dbt Snapshots

This project implements **Slowly Changing Dimensions (SCD)** using **dbt snapshots**, located in the `/snapshots` directory.

Snapshots allow historical tracking of dimension records over time, enabling time-based analysis of evolving entities.

Key features:
- dbt snapshot configuration
- Row-level change detection
- Automatic version history creation
- Supports auditing and time-travel analytics

This enables questions such as:
- What did this record look like at a specific point in time?
- How have customer or product attributes changed over time?

---

## 🚀 End-to-End Workflow

1. Ingest raw data into the warehouse (Bronze layer)
2. Apply Silver transformation models in dbt  
   - Cleaning  
   - Standardization  
   - Business logic  
3. Build Gold models for analytics  
   - Fact tables  
   - Dimension tables  
4. Run dbt snapshots to preserve historical changes
5. Orchestrate and schedule pipelines using Dagster

---

## 📂 Repository Structure

```text
.
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── snapshots/
├── tests/
├── dbt_project.yml
└── README.md

```


## 📚 What I Learned from This Project

Designing modern data warehouses using the Medallion Architecture

Building well-defined fact and dimension tables

Implementing Slowly Changing Dimensions (SCD) with dbt snapshots

Writing modular, testable SQL transformations

Applying data quality checks and best practices

Orchestrating reliable, production-style data pipelines

Managing data projects with version control and reproducibility in mind

## 🔮 Future Improvements

Add automated data quality monitoring

Integrate a BI tool for reporting and dashboards

Extend snapshot coverage to additional dimensions

Optimize models for performance and cost

Add CI/CD checks for dbt models

👤 Author

**Margaret Mwangi**

**Analytics Engineer**

GitHub: **https://github.com/Margaret-Mwangi**

LinkedIn: **https://www.linkedin.com/in/margaretwmwangi/**
